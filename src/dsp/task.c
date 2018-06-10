/**
@file   task.c
@brief  This file contains the implementation for the Pool Notify module on DSP
*/

/*  ----------------------------------- DSP/BIOS Headers            */
#include <std.h>
#include <gbl.h>
#include <log.h>
#include <swi.h>
#include <sys.h>
#include <tsk.h>
#include <pool.h>

/*  ----------------------------------- DSP/BIOS LINK Headers       */
#include <failure.h>
#include <dsplink.h>
#include <platform.h>
#include <notify.h>
#include <bcache.h>
/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>
#include <task.h>
#define h 58
#define w 86
#define GLOBAL_Q 12
#include <IQmath.h>
#define F 9

#define I_rect 0
#define I_weight 3*58*86/F
#define I_model 4*58*86/F
#define I_candi 4*58*86/F+48



extern Uint16 MPCSXFER_BufferSize ;


static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info) ;

Int Task_create (Task_TransferInfo ** infoPtr)
{
    Int status    = SYS_OK ;
    Task_TransferInfo * info = NULL ;

    /* Allocate Task_TransferInfo structure that will be initialized
     * and passed to other phases of the application */
    if (status == SYS_OK) 
	{
        *infoPtr = MEM_calloc (DSPLINK_SEGID,
                               sizeof (Task_TransferInfo),
                               0) ; /* No alignment restriction */
        if (*infoPtr == NULL) 
		{
            status = SYS_EALLOC ;
        }
        else 
		{
            info = *infoPtr ;
        }
    }

    /* Fill up the transfer info structure */
    if (status == SYS_OK) 
	{
        info->dataBuf       = NULL ; /* Set through notification callback. */
        info->bufferSize    = MPCSXFER_BufferSize ;
        SEM_new (&(info->notifySemObj), 0) ;
    }

    /*
     *  Register notification for the event callback to get control and data
     *  buffer pointers from the GPP-side.
     */
    if (status == SYS_OK) 
	{
        status = NOTIFY_register (ID_GPP,
                                  MPCSXFER_IPS_ID,
                                  MPCSXFER_IPS_EVENTNO,
                                  (FnNotifyCbck) Task_notify,
                                  info) ;
        if (status != SYS_OK) 
		{
            return status;
        }
    }

    /*
     *  Send notification to the GPP-side that the application has completed its
     *  setup and is ready for further execution.
     */
    if (status == SYS_OK) 
	{
        status = NOTIFY_notify (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (Uint32) 0) ; /* No payload to be sent. */
        if (status != SYS_OK) 
		{
            return status;
        }
    }

    /*
     *  Wait for the event callback from the GPP-side to post the semaphore
     *  indicating receipt of the data buffer pointer and image width and height.
     */
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;
    SEM_pend (&(info->notifySemObj), SYS_FOREVER) ;

    return status ;
}

int * buf;
int length;


/**
* @brief        Function for implementing calWeight function of MeanShift for last 58/F rows
* @return         
*/
void calWeightDSP(void)
{

  int bin_value[6];
  int i,j,a,b,c,e,f,g,m;
  int a1,b1,c1,e1,f1,g1,m1;
  int iw,iw1,iw2, iww,iww1,iww2;

  BCACHE_inv ((Ptr)buf, length*sizeof(int), TRUE) ; //invalidate cache
    
    //==========================================weight=========================================
 
#pragma MUST_ITERATE(,58,)  
        for(i=0;i<h/F;i++)
        {
              //remove the variable that keep the same in inner
              iw=i*w;
              iw1=i*w+h/F*w;
              iw2=i*w+h/F*w*2;
            
              iww=iw+43;
              iww1=iw1+43;
              iww2=iw2+43;
            
#pragma MUST_ITERATE(,86,)

              for(j=0;j<w/2;j++)
              {
                  //calculate the bin value
                  bin_value[0] = (buf[I_rect+iw+j]>>4);  
                  bin_value[1] = (buf[I_rect+iw1+j]>>4);  
                  bin_value[2] = (buf[I_rect+iw2+j]>>4);
  
  
                  a=buf[I_model+bin_value[0]];            
                  b=buf[I_model+16+bin_value[1]];
                  c=buf[I_model+32+bin_value[2]];
              
                  e=buf[I_candi+bin_value[0]];
                  f=buf[I_candi+16+bin_value[1]];
                  g=buf[I_candi+32+bin_value[2]];            
                  //division done by IQmath lib
                  m=_IQdiv((a*b*c),(e*f*g));
                  //square root done by IQmath lib
                  buf[I_weight+iw+j]=_IQsqrt(m);


                  //loop rolling               
                  bin_value[3] = (buf[I_rect+iww+j]>>4);      
                  bin_value[4] = (buf[I_rect+iww1+j]>>4);  
                  bin_value[5] = (buf[I_rect+iww2+j]>>4);
  
  
                  a1=buf[I_model+bin_value[3]]; 
                  b1=buf[I_model+16+bin_value[4]];
                  c1=buf[I_model+32+bin_value[5]];
                  e1=buf[I_candi+bin_value[3]];
                  f1=buf[I_candi+16+bin_value[4]];
                  g1=buf[I_candi+32+bin_value[5]];            
               
                  m1=_IQdiv(((a1*b1*c1)),(e1*f1*g1));         
                  buf[I_weight+iww+j]=_IQsqrt(m1);                
              }

        }
    
    //write back the updated weight
    BCACHE_wb ((Ptr)(buf+I_weight), (58*86/F)*sizeof(int), TRUE) ;
    //notify gpp that dsp finish the calcuation
    NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)0);

}

Int Task_execute (Task_TransferInfo * info)
{

    //wait for first msg
    SEM_pend (&(info->notifySemObj), SYS_FOREVER);

    // start exchange =============================================

    SEM_pend (&(info->notifySemObj), SYS_FOREVER);
    
    //+============================== end

    return SYS_OK;
}




Int Task_delete (Task_TransferInfo * info)
{
    Int    status     = SYS_OK ;
    /*
     *  Unregister notification for the event callback used to get control and
     *  data buffer pointers from the GPP-side.
     */
    status = NOTIFY_unregister (ID_GPP,
                                MPCSXFER_IPS_ID,
                                MPCSXFER_IPS_EVENTNO,
                                (FnNotifyCbck) Task_notify,
                                info) ;

    /* Free the info structure */
    MEM_free (DSPLINK_SEGID,
              info,
              sizeof (Task_TransferInfo)) ;
    info = NULL ;

    return status ;
}


static Void Task_notify (Uint32 eventNo, Ptr arg, Ptr info)
{
    static int count = 0;
    Task_TransferInfo * mpcsInfo = (Task_TransferInfo *) arg ;

    (Void) eventNo ; /* To avoid compiler warning. */

    count++;
    if (count==1) {
        buf =(int *)info ;
        SEM_post(&(mpcsInfo->notifySemObj));
    }
    else if (count==2) {
        length = (int)info;
        SEM_post(&(mpcsInfo->notifySemObj));
    }
    else if (count==3) {
        SEM_post(&(mpcsInfo->notifySemObj));
    }

    if ((int)info == 5) {
        calWeightDSP();
    }
    else if ((int)info == 8) {
        NOTIFY_notify(ID_GPP,MPCSXFER_IPS_ID,MPCSXFER_IPS_EVENTNO,(Uint32)0);
        SEM_post(&(mpcsInfo->notifySemObj));
    }
}

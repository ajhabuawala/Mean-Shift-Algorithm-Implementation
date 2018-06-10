/**
@file   task.h
@brief  This file contains the declarations for the Pool Notify module on DSP
*/

#if !defined (TASK_)
#define TASK_

/*  ----------------------------------- DSP/BIOS Headers            */
#include <sem.h>

/*  ----------------------------------- Sample Headers              */
#include <pool_notify_config.h>


typedef struct Task_TransferInfo_tag {
    int *        dataBuf ;
    SEM_Obj         notifySemObj ;
    Uint32          bufferSize ;
} Task_TransferInfo ;

Int Task_create (Task_TransferInfo ** transferInfo) ;

Int Task_execute (Task_TransferInfo * transferInfo) ;

Int Task_delete (Task_TransferInfo * transferInfo) ;



#endif /* !defined (Task_) */

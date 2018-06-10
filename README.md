#Effecient Implemementation of Mean Shift Algorithm on Multi-Core Heterogeneous Computing Platform


## Introduction

Object tracking is a popular topic in the field of computer vision and embedded applications used for object
tracking must meet real time constraints ensuring all computations are completed within time and track object effectively. Improving speed of any application requires an environment which is capable of utilizing parallelism in the code and execute as much code as possible on available processing units. In this report we have optimized Mean Shift Algorithm on a multi-core heterogeneous processor

This is an group assignment for the course 'Embedded System Lab' taught at TU Delft. See PDF for more details.

##Instructions

* The entry point is the main function inside gpp_main.cpp in the gpp folder.

* To build the application : run 'make' inside the gpp and dsp folders

* The executables MeanShift (for gpp) and pool_notify.out (for dsp) will be generated, after make, inside the respective Debug folders.

* Place both executables on the target, along with the input video file car.avi, provided in this folder.

* After giving executable permissions, run the command:

* ./MeanShift pool_notify.out car.avi

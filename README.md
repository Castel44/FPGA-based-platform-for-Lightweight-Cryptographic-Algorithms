# Open Hardware 2018 Design Contest
Team number: xohw18-294

Project name: FPGA-based platform for Lightweight Cryptographic Algorithms

Date: 30/06/2018

Version of uploaded archive: 1


University name: Università Politecnica delle Marche

Supervisor name: Massimo Conti

Supervisor e-mail: m.conti@staff.univpm.it

Participant(s): Castellani Andrea, Cornell Samuele

Email: a.castellani93@gmail.com, cornellsamuele@gmail.com



Board used: Digilent  Zybo  Zynq-7000

Vivado Version: 2018.1

Brief description of project: We will compare some different lightweight block ciphers on a common FPGA platform. Our focus is mostly on resource utilization and power consumption of those ciphers. For what regards power consumption we will obtain it from simulation and also experimentally probing the board.


Description of archive :

Every Cipher has his own directory, with the full vivado project on it. 

Files are structured as follows:

<CipherName>/<CipherName_block_key_implementation>/<CipherName_block_key_implementation>.hw/ <-This folder contains the bitstream file. Its name is "IP_Testing.bin" because it is called as the top entity name.

<CipherName>/<CipherName_block_key_implementation>/<CipherName_block_key_implementation>.srcs/ <-This folder contains the source files, divided in constraint files (*.xdc), design source (*.vhd) and simulation TestBenches in respective sub-directories.

<CipherName>/<CipherName_block_key_implementation>/power_1.xpe <-This file is the power report generated from Vivado relative that cipher and implementation, it's achieved using switching activity from the *.saif file after the Post-Implementation Timing Simulation.

<CipherName>/<CipherName_block_key_implementation>/<CipherName_block_key_implementation>.xpr <-This file is the Vivado project file. Its already set up with the Zybo board and the project hierarchy.

Power estimator/7_Series_XPE.xlsm <- This is the XPE Excel sheet for the 7-Series board, it is already set up with the snapshot of ALL 21 the cipher's implementations power reports.

Power_measuerements/ <-This folder contains the Python file, in form of JupyterNonebook (*.ipynb), necessary to post-process the raw data from measurements with oscilloscope.

Power_measurements/<CipherName_csv>/ <- This folder contains the raw data from measurements.

Docs/ <- This folder contains all the documentations relative to this project.


Instructions to build and test project;

Step 1:

Open the Vivado project relative to a cipher

Step 2:

Run the Post-Implementation Timing Simulation

Step 3:

Verify the correctness of simulated data with with *.xpe files given in the Project folder.

Step 4:

Run the Python files and verify that real-world measured data are in agreement with simulated values.

Step 5: (optional)

Repeat with different ciphers.

Link to YouTube Video(s): https://youtu.be/prjaFSJ4Qm0

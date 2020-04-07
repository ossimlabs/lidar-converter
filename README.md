# potree-centos

Docker image for running potree

LIDAR Test Data:
 - https://potree-test-data.s3.amazonaws.com/USGS_LPC_MD_VA_Sandy_NCR_2014_18SUJ322306_LAS_2015.zip
 - https://potree-test-data.s3.amazonaws.com/YSM06_251259_4171798_LAS.zip
 
 To build Image:
 
 - `./build.sh`
 
 To run:
 - Look at the run.sh script,  will have to mount the input and output directories to prcoess data
 - Will need Web server to view the results.

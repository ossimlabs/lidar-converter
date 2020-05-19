# lidar-converter

Docker image for running potree

LIDAR Test Data:
 - https://potree-test-data.s3.amazonaws.com/USGS_LPC_MD_VA_Sandy_NCR_2014_18SUJ322306_LAS_2015.zip
 - https://potree-test-data.s3.amazonaws.com/YSM06_251259_4171798_LAS.zip
 
 (Don't put these in the project directory as docker will upload them to the docker server on build)
 
 To build Image:
 
- `cd builder`
- `./build-docker.sh`
- `cd ../runtime`
- `./build-docker.sh`
- `cd ..`

 To run potree:
 -  mkdir -p <Apache Document Dir>/potree 
   (If using macports,  that will be:  `/opt/local/www/apache2/html`)
 - `chmod 777  <Apache Document Dir>/potree`
 - `./run-potree.sh <Path to unzipped las files>/<las file>.las`
 - Open Web browser to `http://localhost/potree`. Should see a folder that correspondes to the output
 
 To run entwine:
 -  mkdir -p <Apache Document Dir>/entwine 
   (If using macports,  that will be:  `/opt/local/www/apache2/html`)
 - `chmod 777  <Apache Document Dir>/entwine`
 - `./run-entwine.sh <Path to unzipped las files>/<las file>.las`
 - Open Web browser to `http://localhost/entwine`. Should see a folder that correspondes to the output
 
 

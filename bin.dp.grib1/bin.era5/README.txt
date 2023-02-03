#Script to download ERA5 data for use with the RAMS model

#Step 1: Set-up cdsapi client in your home drive on pleiades
#        - Follow directions here: https://cds.climate.copernicus.eu/api-how-to

#Step 2: create a python environment from the .yml file saved in this directory
######## conda env create -f era5_dnld.yml
######## conda activate era5_dnld

#Step 3: Update the top of the .py script for your specific case study information (location/dates) and savepaths 

#Step 4: Run python script
######## python ERA5-Data_download_GRIB_RAMS.py > test.out

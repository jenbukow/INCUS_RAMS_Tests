#!/bin/bash
#Script to dgrib era5 data - from Sean W. Freeman, augmented by Peter J. Marinescu

# Path to dgrib code
cd /nobackupp19/swfreema/INCUS/basin_simulations/argentina_cacti_summer_2018/rams_code/RAMS/bin.dp.grib1

# ERA5 Data input
IN_FILE="/nobackupp19/swfreema/INCUS/basin_simulations/argentina_cacti_summer_2018/era5_data/ERA5_20181213-14.grib"

# DP_FILE Output directory needs trailing slash
OUT_DIR="/nobackupp19/swfreema/INCUS/basin_simulations/argentina_cacti_summer_2018/dprep/B1_R1/"

YEAR=2018
MONTH=12
START_DAY=13
END_DAY=15
for day in $(seq -f "%02g" $START_DAY $END_DAY)
do
    for hour in $(seq -f "%02g" 0 23)
    do
        ./dgrib-6.3.02 -t 6 -d $YEAR$MONTH$day$hour -h 0 -f $IN_FILE
        mv dp-p$YEAR-$MONTH-$day-"$hour"00* $OUT_DIR
    done
done

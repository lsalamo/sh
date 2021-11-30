# RUN > ./r-adobe-evar.sh <TOKEN>
#!/bin/bash

TOKEN=$1

FILE=~/Documents/github\ enterprise/r-training/adobe/api2.0/report\ evars/evars.R
if test -f "$FILE"; then
	echo "INFO > RScript file '$FILE'"
else
	echo "ERROR > RScript file does not exist > $FILE"
fi

# ACTIVAMOS ENTORNO R
source ~/Applications/anaconda3/etc/profile.d/conda.sh
conda activate r_env
echo "INFO > conda environment 'r_env' activated"ddd

# RUN SCRIPT R
echo "INFO > RScript init"
Rscript --slave "$FILE" $TOKEN
echo "INFO > RScript executed"

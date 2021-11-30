# RUN > ./r-adobe-reportsuites.sh <TOKEN>
#!/bin/bash

TOKEN=$1
echo "INFO > The number of arguments is $#"

FILE=~/Documents/github\ enterprise/r-training/adobe/api2.0/report\ suites/rs.R
if test -f "$FILE"; then
	echo "INFO > File exist > $FILE"
else
	echo "WARINING > File not exist > $FILE"
fi

# ACTIVAMOS ENTORNO R
source ~/Applications/anaconda3/etc/profile.d/conda.sh
conda activate r_env
echo "INFO > Emvironment activated"

# RUN SCRIPT R
echo "INFO > RScript init"
Rscript --slave "$FILE" $TOKEN
echo "INFO > RScript executed"

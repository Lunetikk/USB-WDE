#!/bin/bash
 
DATE=`date +%d_%m_%Y`
FILETYPE=.log
 
if [ -f "/media/weatherlog/$DATE$FILETYPE" ]; then
echo "" > /dev/null
else
echo "Date;Time;Column1;Column2;Column3;Column4;Column5;Column6;Column7;Column8;Column9;Column10;Column11;Column12;Column13;Column14;Column15;Column16;Column17;Column18;Column19;Column20;Column21;Column22;Column23;Column24;Column25" > /media/weatherlog/$DATE$FILETYPE
fi
 
nohup /wde/wde_reader.sh </dev/null >/wde/wde_reader.out &
echo $! >/wde/wde_reader.pid

    #!/bin/bash
     
    DATE=`date +%d_%m_%Y`
    FILETYPE=.log
     
    FILE=/media/weatherlog/$DATE$FILETYPE
     
    SOCAT=/usr/bin/socat
    DEV=/dev/ttyUSB0
    BAUD=\,b9600
    CMD="$SOCAT $DEV$BAUD STDOUT"
     
    while read -r line
    do
        echo "$(date +'%d.%m.%Y;%H:%M:%S;')$line">> $FILE
    done < <( $CMD )

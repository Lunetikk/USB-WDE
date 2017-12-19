# USB-WDE
Get weather data from USB-WDE1-2 connected to Raspberry PI

How to: http://www.lunetikk.de/doku.php?id=linux:raspberry:wde:usbwde

#### wde.sh

This script will execute socat with daily modified parameters. The logfile parameter will have the date of “today”. Add this as cronjob to start at 12:01 am everyday. 

Edit "Column1" to "Column25" to whatever data is in your column

#### wde_reader.sh
This script is executed by wde.sh. It will receive data from WDE and writes it into a logfile in /media/weatherlog/

#### wdekill.sh
This script will kill socat/ wde_reader so it can start again at 12.01 am with the new daily parameters. Add this as cronjob to start at 11.59 pm everyday.

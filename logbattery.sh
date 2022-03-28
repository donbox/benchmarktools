# loguptime.sh
#
# This script prints the current battery percentage and timestamp every 10 seconds.
#
# The logfile will be named based on the moment you invoke this script.
# The filename will be
#    uptimelog-<year>-<month>-<day>-<hr>-<min>-<sec>.txt 
# in the current directory.


interval=10
currenttime=$(date +"%Y-%m-%d-%H-%M-%S")
filename='uptimelog-'${currenttime}'.txt'
echo Writing to $filename
echo 'Time,Percentage' > $filename

for ((;;)) { 
    currenttime=$(date +"%Y-%m-%dT%H:%M:%S")
    currentbattery=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
    echo ${currenttime}','${currentbattery} >> $filename; 
    echo ${currenttime}','${currentbattery}
    sleep $interval
}

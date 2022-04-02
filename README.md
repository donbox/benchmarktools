# benchmarktools
Miscellaneous benchmarking scripts and tools

## logbattery.sh

A simple script that samples the remaining battery capacity every 10 seconds and logs it to a file. 

To run it from a terminal, first run this command once to make the script runnable:

> chmod u+x logbattery.sh

When you run the script, it will output the log to a file named `battlog-<year>-<month>-<day>-<hr>-<min>-<sec>.csv` in the current directory.

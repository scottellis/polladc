  polladc
=========

A command line program to continuously poll the TPS65950 ADCs on the Gumstix 
Overo COMs.

For use with kernels >= 2.6.39 where the madc driver shows up under

        /sys/class/hwmon/hwmon0/device

There are 6 ADCs available on the Gumstix expansion boards, labelled ADC 2 - 7.

  Build
=========

There is a Makefile provided for native building on a Gumstix with C development
tools.

        root@overo:~/polladc# make
        gcc -Wall -O2 polladc.c -o polladc


TODO: A recipe for OE builds


  Run
=========

        root@overo:~/polladc# ./polladc -h

        Usage: ./polladc <options> [adc-list]
          -d<delay-ms>       Millisecond to delay between reads, default 50
          adc-list           Space separated list of ADCs to monitor, 2-7

        Example:
                ./polladc -d100 2 3 5


An example run, polling 4 channels with the minimum delay of 1 ms.

        root@overo:~/polladc# ./polladc -d1 2 3 5 7

        (use ctrl-c to stop)

        ADC            2      3      5      7   
        Read  1280:    17    129    124     14  ^C

        Summary:
          Elapsed 10.96 sec
          Reads = 1300
          Rate = 118.626149 Hz


Updates are only reported to stdout every 16th read.


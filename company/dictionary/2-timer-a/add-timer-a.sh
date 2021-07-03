

#!/bin/bash

suppfile="company-20210606.135"
#ynum="138"
ydir="2-timer-a"
yfile="timer-a.txt"

#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/ycsctl/ r /home/y/y-emacs/company/dictionary/${ydir}/${yfile}" \
    /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    echo "timer-ok" 


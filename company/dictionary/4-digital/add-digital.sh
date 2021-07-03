

#!/bin/bash

suppfile="company-20210606.135"
#ynum="138"
ydir="4-digital"
yfile="digital.txt"

#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/yinterrupt/ r /home/y/y-emacs/company/dictionary/${ydir}/${yfile}" \
    /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    echo "digital-ok" 


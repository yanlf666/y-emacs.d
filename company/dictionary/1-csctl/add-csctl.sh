

#!/bin/bash

suppfile="company-20210606.135"
#ynum="53"
ydir="1-csctl"
yfile="csctl.txt"


#sed -i "${ynum} r /home/y/y-emacs/company/${ydir}/${yfile}" \

sed -i "/c-mode/ r /home/y/y-emacs/company/dictionary/${ydir}/${yfile}" \
    /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    echo "csctl-ok"


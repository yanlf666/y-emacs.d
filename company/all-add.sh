

#!/bin/bash

cd /home/y/y-emacs/company/ &&\
    ./so.sh &&\
    ./dictionary/company.sh &&\
    ./dictionary/delete-copy.sh &&\
    ./dictionary/1-csctl/add-csctl.sh &&\
    ./dictionary/2-timer-a/add-timer-a.sh &&\
    ./dictionary/3-interrupt/add-interrupt.sh &&\
    ./dictionary/4-digital/add-digital.sh &&\
    echo done

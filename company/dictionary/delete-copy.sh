

#!/bin/bash

suppfile="company-20210606.135"

rm -rf /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    
    cp /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el.back \
       /home/y/.emacs.d/elpa/${suppfile}/company-keywords.el &&\
    echo "delete-copy-ok"
   

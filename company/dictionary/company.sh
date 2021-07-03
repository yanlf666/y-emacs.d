

#!/bin/bash

suppfile="company-20210606.135"

cp ~/.emacs.d/elpa/${suppfile}/company-keywords.el \
   ~/.emacs.d//elpa/${suppfile}/company-keywords.el.back &&\
    rm -rf ~/.emacs.d/elpa/${suppfile}/company-keywords.elc &&\
    echo "ok"

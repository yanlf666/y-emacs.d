

#!/bin/bash

sourcefile="company-20210606.1355"
objectivefile="company-20210606.135"


sed -i "s/${sourcefile}/${objectivefile}/g" \
    `grep ${sourcefile} -rl /home/y/y-emacs/company/dictionary/` &&\
    echo "ok"

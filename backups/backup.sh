#! /bin/bash

DATE=`date +%Y-%m-%d_%H`
remote='p-int:~/public/'
destination="/home/metrice/website/hugo/doks/backups/backup_${DATE}/"

if [[ ! -d ${destination} ]]
        then
                echo "Create directory ${destination}"
                mkdir -p ${destination}
fi
rsync -a --delete --quiet ${remote} ${destination}

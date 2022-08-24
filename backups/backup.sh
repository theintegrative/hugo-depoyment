#! /bin/bash

DATE=`date +%Y-%m-%d_%H`
remote='remote-server:~/public/'
destination="/your_folder/backups/backup_${DATE}/"

if [[ ! -d ${destination} ]]
        then
                echo "Create directory ${destination}"
                mkdir -p ${destination}
fi
rsync -a --delete --quiet ${remote} ${destination}

#! /bin/bash

# first check for updates - you can remove this if it doesn't apply
npm update

# build the website 
# in case of hugo run: hugo
npm run build

# make backup of the production site before deployment
bash ./backups/backup.sh

# update files
rsync -ruzv --delete ./public/ user@server:/home/integrative/public/

# restart docker container with new files
ssh user@server "docker-compose down --remove-orphans && docker-compose up -d"

# start up browser of choice, to see the results
brave-browser https://server/


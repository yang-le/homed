#! /bin/sh

# update_hosts rely on getmyip

# append lastest ip info to hosts
./getmyip.sh >> hosts

# push hosts onto github
git add hosts
log="`date` update"
git commit -m "$log"
git push


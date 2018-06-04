#!/bin/bash
 
WEB_PATH='/alidata/server/www/deploy-kmall'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment deploy-kmall"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH
echo "Finished."

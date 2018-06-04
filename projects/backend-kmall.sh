#!/bin/bash
 
WEB_PATH='/alidata/server/www/backend-kmall'
WEB_PATH_CLIENT='/alidata/server/www/backend-kmall/client'
WEB_USER='root'
WEB_USERGROUP='root'
 
echo "Start deployment kmall.kaiyouservices.com"
cd $WEB_PATH
echo "pulling source code..."
# git reset --hard origin/release
# git clean -f
git pull
git checkout master
echo "changing permissions..."
chown -R $WEB_USER:$WEB_USERGROUP $WEB_PATH_CLIENT
cd $WEB_PATH_CLIENT
cnpm run build
echo "Finished."

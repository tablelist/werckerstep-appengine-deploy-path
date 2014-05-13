#!/bin/sh
sudo apt-get update
sudo apt-get install unzip

cd $WERCKER_ROOT
debug 'Downloading AppEngine SDK...'

curl -o appengine.zip https://storage.googleapis.com/appengine-sdks/featured/google_appengine_1.9.4.zip; unzip -x appengine.zip
export PATH="$PATH:$(pwd)/google_appengine"

echo "$WERCKER_APPENGINE_DEPLOY_PATH_UPDATE_PASSWORD" > "$WERCKER_STEP_TEMP/password"

cd $WERCKER_SOURCE_DIR

debug 'Starting deployment of directory'
appcfg.py update $WERCKER_APPENGINE_DEPLOY_PATH_UPDATE_SRCPATH --email="$WERCKER_APPENGINE_DEPLOY_PATH_UPDATE_EMAIL" --passin < "$WERCKER_STEP_TEMP/password"

success 'Finished'

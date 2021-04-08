#!/bin/sh

echo "Cloning repositories..."

SITES=$HOME/Code

# work
git clone git@gitlab.com:medeq/crm-api.git $SITES/crm-api
git clone git@gitlab.com:medeq/api.git $SITES/medeq-api
git clone git@gitlab.com:medeq/medeqstars.ru.git $SITES/medeq-web
git clone git@gitlab.com:medeq/backup-server.git $SITES/backup-server
git clone git@gitlab.com:medeq/crm-client.git $SITES/crm-client
git clone git@gitlab.com:medeq/medeqstars.ru-admin.git $SITES/medeq-admin
git clone git@gitlab.com:medeq/personal.git $SITES/medeq-personal

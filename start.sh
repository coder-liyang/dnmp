#!/usr/bin/env bash

DIRECTORY=$(cd `dirname $0`; pwd)/www
if [ "`ls -A $DIRECTORY`" = ".gitignore" ];
then
cat>$DIRECTORY/index.php<<EOF
<?php
phpinfo();
EOF
fi

docker-compose up -d
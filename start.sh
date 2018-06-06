#!/usr/bin/env bash

DIRECTORY=www
if [ "`ls -A $DIRECTORY`" = ".gitignore" ];
then
cat>www/index.php<<EOF
<?php
phpinfo();
EOF
fi

docker-compose up -d
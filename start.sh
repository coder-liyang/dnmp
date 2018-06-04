#!/usr/bin/env bash

DIRECTORY=www/localhost
if [ "`ls -A $DIRECTORY`" = ".gitignore" ];
then
cat>www/localhost/index.php<<EOF
<?php
phpinfo();
EOF
fi

docker-compose up -d
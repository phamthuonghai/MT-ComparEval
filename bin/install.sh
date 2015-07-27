#!/bin/bash

curl -sS https://getcomposer.org/installer | php
php composer.phar install --no-dev
chmod -R 777 temp log storage
sqlite3 storage/database < schema.sql

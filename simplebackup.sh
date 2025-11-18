#!/bin/bash

backup_dir=/tmp

filename=backup.tgz

echo "Backup starting"

tar -zcf "${backup_dir}/${filename}" ~/ 2>/dev/null

echo "Backup voltooid!"

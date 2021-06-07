#!/bin/bash
# glpi-script-backup
# A Backup Script for GLPI by @ambientelivre
# The project is open source in https://github.com/ambientelivre/glpi-script-backup
# contrib!
# Create by marcio@ambientelivre.com.br


# Dir install GLPI
GLPI_DIR=/var/www/html/glpi

#User access GLPI database
DATABASE_USER=glpi

# Passwd for user access GLPI database
DATABASE_PWD=123456

# Name of the Database GLPI
DATABASE_NAME=glpi

# Path to destination for backup file
BACKUP_PATH=/mnt/storage
DATE_NOW=$(date +%d-%m-%y)

cd $BACKUP_PATH
mysqldump -u$DATABASE_USER -p$DATABASE_PWD $DATABASE_NAME > $BACKUP_PATH/backup_$DATE_NOW.sql
tar -pczvf $BACKUP_PATH/glpi-app-and-data-backup_$DATE_NOW.tar.gz $GLPI_DIR $BACKUP_PATH/backup_$DATE_NOW.sql
rm $BACKUP_PATH/backup_$DATE_NOW.sql
echo "Backup finish!"

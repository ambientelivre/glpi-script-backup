# glpi-script-backup
A Backup Script for GLPI by @ambientelivre
The project is open source in https://github.com/ambientelivre/glpi-script-backup
contrib!
Create by marcio@ambientelivre.com.br


### Mode Use in Crontab
Sample of Backup in 01:00AM

exec crontab -e

edit:
#Backup GLPI Software + Base + files.

01 00 * * * cd /var/www/html/glpi/scripts/glpi-script-backup; sh glpibackup.sh

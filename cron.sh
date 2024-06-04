sudo apt-get update
sudo apt-get install cron
sudo service cron start
sudo service cron status

SCRIPT_PATH="$(pwd)/exo1.sh"
DATE_FORMAT="\$(date +\%Y-\%m-\%d-\%H-\%M)"
CRON_ENTRY="*/5 * * * * /bin/bash $SCRIPT_PATH $HOME/personnages-$DATE_FORMAT"
(crontab -l; echo "$CRON_ENTRY" ) | crontab -

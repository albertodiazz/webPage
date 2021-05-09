#!/bin/bash

#comandos:chmod +x ssl_renew.sh 
#open sudo crontab -e
#agrega esta line: */5 * * * * /home/sammy/wordpress/ssl_renew.sh >> /var/log/cron.log 2>&1
#Una vez que transcurran cinco minutos, revise ​​​​​cron.log​​​​​​ para comprobar si la solicitud de renovación se realizó con éxito o no:
#tail -f /var/log/cron.log

COMPOSE="/usr/local/bin/docker-compose --no-ansi"
DOCKER="/usr/bin/docker"

cd /home/sammy/wordpress/
#recuerda que en crontab eleminamos el dry-run 
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP webserver
$DOCKER system prune -af


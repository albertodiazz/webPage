# webPage
Docker | Ngingx| wordpress | cerbot 

Create this directories:  
- mkdir certbot-etc | mkdir nginx-conf |  mkdir dbdata | touch  nginx.conf 

This is where we store the credentials 

- touch .env 

SQL_ROOT_PASSWORD=______ 

MYSQL_USER=_____ 

MYSQL_PASSWORD=____  

Remember add the wp_config.php file 

- If you use duckdns remember setup the token inside the docker-compose.yml

When the certificate is done see if the certificate exist

- docker-compose exec webserver ls -la /etc/letsencrypt/live

The next thing is update your nginx.conf and yml for open the port 443 and --force-renewal in .yml please see the documentation in digital ocean. I upload this file because i had problems runing the docker-compose in the same way as the digital ocean documentation. I experienced crashed in the mysql the fault was of the volumes, that´s resolve mounted the volumes on the machine

Remember changed the domains in the nginx files and the docker-compose

Reference: https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose-es
www.duckdns.org


# webPage
Docker | wordpress | cerbot 

Create this directories:  
mkdir certbot-etc | mkdir nginx-conf |  touch  nginx.conf |  mkdir dbdata

This is where we store the credentials 

touch .env 

SQL_ROOT_PASSWORD=______ 

MYSQL_USER=_____ 

MYSQL_PASSWORD=____  

Remember add the wp_config.php file 

Reference: https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-docker-compose-es
www.duckdns.org

If you use duckdns remember setup the token inside the docker-compose.yml

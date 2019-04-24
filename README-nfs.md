To get nfs, memcache and db sessions to work:

Preliminary: 

Clone jisc-collections-symfony into the same directory as this README.

NB site uses localhost rather than php.docker.localhost

Take a db dump of your  current setup  and make it available to your
new site as eg /var/www/html/dump.sql

Import the db dump when you have set up in your new site.

1.   Copy files/doctrine.yaml to config/packages/dev/doctrine.yaml
in jisc-collections-symfony

2.   Copy files/doctrine.yaml  config/services_dev.yaml

3.   Update .env in docker4php so that you are using S4_ROOT_PARENT
to point to the directory above the jisc-collections-symfony folder

NB you need to have a folder called 'jisc-collections-symfony'

If not then modify docker-compose.yml directly.

4. cp create_sess.sql to jisc-collections-symfony

5. chown -R 999:999 data/mariadb

6. start the containers

make

7.

make shell 

In the container run:

Import your db dump
mysql -uroot -ppassword -hmariab < /var/www/html/dump.sql
mysql -uroot -ppassword  -hmariadb < /var/www/html/create_sess.sql

8.  Visit your site using port 9000 ( diffferent from 8000 so that you can have the old one running
if you need to ).
8

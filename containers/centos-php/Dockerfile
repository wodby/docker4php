FROM miveo/centos-php-fpm:7.2


RUN  curl https://packages.microsoft.com/config/rhel/7/prod.repo > /etc/yum.repos.d/mssql-release.repo
RUN  yum update -y
RUN  ACCEPT_EULA=Y yum install -y msodbcsql mssql-tools unixODBC-devel 
ADD install_sqlsrv.sh /root/install_sqlsrv.sh
ADD xdebug.sh /root/xdebug.sh

RUN /root/install_sqlsrv.sh

COPY xdebug.sh /usr/local/bin/
RUN ln -s usr/local/bin/xdebug.sh  / # backwards compat
#ENTRYPOINT ["xdebug.sh"]
#CMD ["echo"]


# /opt/plesk/php/7.2/bin/pecl install pdo_sqlsrv
# echo "extension=pdo_sqlsrv.so" > /opt/plesk/php/7.2/etc/php.d/pdo_sqlsrv.ini
# /opt/plesk/php/7.2/bin/pecl install sqlsrv 
# echo "extension=sqlsrv.so" > /opt/plesk/php/7.2/etc/php.d/sqlsrv.ini


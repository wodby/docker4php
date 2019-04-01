 yum-config-manager --enable remi-php72
 yum install -y php72u-devel
 yum install -y gcc
 yum install -y gcc-c++
 yum install -y pecl
 pecl install pdo_sqlsrv
 echo "extension=pdo_sqlsrv.so"  >  /etc/php.d/30-pdo_sqlsrv.ini 

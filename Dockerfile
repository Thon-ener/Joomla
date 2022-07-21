FROM php:7.1.2-apache
RUN docker-php-ext-install mysqli
#RUN mkdir joomla25
#WORKDIR /var/www/html/joomla25
#RUN apt-get update && apt-get install wget -y
#RUN wget -O Joomla_2.5.28-Stable-Full_Package.tar.gz https://downloads.joomla.org/cms/joomla25/2-5-28/joomla_2-5-28-stable-full_package-tar-gz?format=gz
#RUN tar xzvf Joomla_2.5.28-Stable-Full_Package.tar.gz
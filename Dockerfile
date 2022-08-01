FROM php:5.3.29-apache
RUN apt-get update && apt-get install -y --force-yes php5-mysql 
#&& apt-get clean && rm -fr /var/lib/apt/lists/*
RUN apt-get -y --force-yes -o Dpkg::Options::="--force-confnew" install libapache2-mod-php5
RUN service apache2 start
#CMD service apache2 start
#ENTRYPOINT ["/bin/bash"]
#CMD ["/usr/sbin/apache2","-D","FOREGROUND"]
#EXPOSE 80
#RUN mkdir joomla25
#WORKDIR /var/www/html/joomla25
#RUN apt-get update && apt-get install wget -y
#RUN wget -O Joomla_2.5.28-Stable-Full_Package.tar.gz https://downloads.joomla.org/cms/joomla25/2-5-28/joomla_2-5-28-stable-full_package-tar-gz?format=gz
#RUN tar xzvf Joomla_2.5.28-Stable-Full_Package.tar.gz
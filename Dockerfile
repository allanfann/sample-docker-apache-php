From ubuntu:latest

# install apache
RUN apt-get update && DEBIAN_FRONTEND=nointeraction apt-get -y install \
         apache2 php7.0 libapache2-mod-php7.0

# run apache and expose port
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND

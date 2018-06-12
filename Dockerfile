FROM node:stretch

RUN apt update && apt install -y python-pip curl php-cli php-imap php-gd php-mysql php-xml php-zip
RUN pip install awsebcli

RUN php -r "copy('https://getcomposer.org/installer', '/tmp/composer-setup.php');"
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN npm install -g bower
RUN npm install -g less
RUN npm install -g bower-npm-resolver
RUN npm install -g uglifycss
RUN npm install -g gulp-cli
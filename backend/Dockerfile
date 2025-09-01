FROM php:8.2-fpm-alpine

# نصب پیش‌نیازها و اکستنشن‌ها
RUN apk add --no-cache \
        bash \
        mysql-client \
        libzip-dev \
        oniguruma-dev \
        autoconf \
        gcc \
        g++ \
        make \
        zip \
        unzip \
        curl \
        git \
        php-pear \
    && docker-php-ext-install pdo pdo_mysql zip bcmath \
    && pecl install redis \
    && docker-php-ext-enable redis

WORKDIR /var/www/html

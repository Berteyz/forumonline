FROM php:7.4-apache

# Установка необходимых расширений
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Копирование файлов PHPBB в контейнер
COPY . /var/www/html

# Настройка прав доступа
RUN chown -R www-data:www-data /var/www/html

FROM php:latest

RUN apt update
RUN apt upgrade -y
RUN apt install git -y

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

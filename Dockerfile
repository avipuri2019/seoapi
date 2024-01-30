# Use the official PHP image
FROM php:8.0-apache

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache modules
RUN a2enmod rewrite

# Set the working directory
WORKDIR /var/www/html

# Copy the PHP application files to the Apache document root
COPY php-app/ /var/www/html/

# Expose port 80
EXPOSE 80

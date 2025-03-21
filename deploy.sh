#!/bin/bash

# Navigate to the project folder
cd /home/YOUR_CPANL_USER/bagh-morvarid || exit

# Pull the latest changes from Git
git pull origin main

# Install Composer dependencies (without dev packages)
composer install --no-dev --optimize-autoloader

# Run database migrations
php artisan migrate --force

# Clear cache and optimize
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Set correct permissions
chmod -R 775 storage bootstrap/cache

# Restart PHP to apply changes
touch /home/amlzoinu/public_html/tmp/restart.txt

echo "Deployment completed successfully!"

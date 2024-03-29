#!/bin/bash

echo "Drop Databases if they exist"
php /var/www/symfony/bin/console doctrine:schema:drop --force

echo "Create Databases"
php /var/www/symfony/bin/console doctrine:database:create

echo "Create Schema"
php /var/www/symfony/bin/console doctrine:schema:create

echo 'Run data fixtures'
php /var/www/symfony/bin/console doctrine:fixtures:load -n
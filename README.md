# Fashion Web + API

## Start Program

Run below command in order

```
npm install
mv .env.example .env
composer install
php artisan key:generate
php artisan migrate
php artisan db:seed
php artisan serve
```

## Problem

### Image not show

Run this command to link with storage
`php artisan storage:link`

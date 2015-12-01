#!/bin/sh

mkdir -p build
rm -fr build/*
composer install --no-dev
cp index.php build
cp shariff.json build
cp -a vendor build
cp -a src build
7z a -tzip shariff-backend-php.zip ./build/*
composer install

#!/bin/bash
cd ..
cd ..

cd Backend
npm install
docker build . -t webtechnologiesabklbackend
cd ..

cd duckling
docker build . -t webtechnologiesabklduckling
cd ..

cd RASA_Docker
docker build . -t webtechnologiesabklrasa
cd ..

cd WeatherService
docker build . -t webtechnologiesabklweatherservice
cd ..

cd Website
rm .env.local
cp .env.local.template .env.local
sed -i 's/-_dev-prod_-/dev/g' .env.local
docker build . -t webtechnologiesabklwebsite
cd ..

cd docker
cd local
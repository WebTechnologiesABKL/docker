#!/bin/bash
#Patrick Langkau
echo "Installing npm (if not installed)"
apt-get update
apt-get install npm -y
npm install -g n
n 18.14.2
cd ..
cd ..

echo "------------------------------------------------------------"
echo "Starting to build docker containers"
echo "------------------------------------------------------------"

echo "------------------------------------------------------------"
echo "Building backend"
echo "------------------------------------------------------------"
cd Backend
npm install
docker build . -t webtechnologiesabklbackend
cd ..

echo "------------------------------------------------------------"
echo "Building WeatherService"
echo "------------------------------------------------------------"
cd WeatherServer
npm install
docker build . -t webtechnologiesabklweatherservice
cd ..

echo "------------------------------------------------------------"
echo "Building Website"
echo "------------------------------------------------------------"
cd Website
rm .env.local
cp .env.local.template .env.local
sed -i 's/-_dev-prod_-/dev/g' .env.local
npm install
docker build . -t webtechnologiesabklwebsite
cd ..

echo "------------------------------------------------------------"
echo "Building duckling"
echo "------------------------------------------------------------"
cd duckling
docker build . -t webtechnologiesabklduckling
cd ..

echo "------------------------------------------------------------"
echo "Building RASA"
echo "------------------------------------------------------------"
cd RASA
docker build . -t webtechnologiesabklrasa
cd ..

cd docker
cd local
echo "------------------------------------------------------------"
echo "Building docker containers finished"
echo "------------------------------------------------------------"
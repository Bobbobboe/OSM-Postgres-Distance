#!/bin/bash

sudo apt update
sudo apt install postgresql postgis osm2pgsql
sudo -u postgres -i
createdb database
psql database -c "CREATE EXTENSION postgis"
wget https://download.geofabrik.de/europe/belgium-latest.osm.pbf -O /tmp/belgium.osm.pbf
osm2pgsql -s -U postgres -d database /tmp/belgium.osm.pbf
echo "Done !"

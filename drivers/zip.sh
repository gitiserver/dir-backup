#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.zip

PTH=$(pwd)/backups/$FILENAME

echo "making backup $FILENAME ..."

/usr/bin/zip -j $PTH -r /var/data/

echo "backup $FILENAME finished"

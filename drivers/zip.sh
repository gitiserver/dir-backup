#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.zip

PTH=$(pwd)/backups/$FILENAME

echo "making backup $FILENAME ..."

HERE_PATH=$(pwd)
cd /var/data

/usr/bin/zip $PTH -r ./*

cd $HERE_PATH

echo "backup $FILENAME finished"

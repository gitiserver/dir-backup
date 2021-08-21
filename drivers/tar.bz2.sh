#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.tar.bz2

PTH=$(pwd)/backups/$FILENAME

echo "making backup $FILENAME ..."

/bin/tar -cjvf $PTH /var/data/

echo "backup $FILENAME finished"
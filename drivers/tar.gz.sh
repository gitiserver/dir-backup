#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.tar.gz

PTH=$(pwd)/backups/$FILENAME

echo "making backup $FILENAME ..."

/bin/tar -C /var/data/ -czf $PTH ./

echo "backup $FILENAME finished"

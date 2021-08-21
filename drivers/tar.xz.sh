#!/bin/bash

FILENAME=$(date +"%Y-%m-%d--%H-%M-%S").bak.tar.xz

PTH=$(pwd)/backups/$FILENAME

echo "making backup $FILENAME ..."

/bin/tar -cJvf $PTH /var/data/

echo "backup $FILENAME finished"
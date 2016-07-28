#!/bin/sh

DIRNAME=$2
COUNT=$1

if [ -z  "$COUNT" ]; then
    COUNT=10
fi

if [ -z  "$DIRNAME" ]; then
    DIRNAME='./'
fi

cd $DIRNAME

for i in `seq 1 $COUNT`;
do
    curl http://lorempixel.com/600/600/technics/ -o img$i.jpg         
done
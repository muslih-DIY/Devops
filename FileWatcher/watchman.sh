#!/bin/bash
WATCHDIR=/Myproject/
DIR=$(dirname "${BASH_SOURCE[0]}")
inotifywait -q -m -r -e modify,move,delete,create $WATCHDIR | while read DIRECTORY EVENT FILE; do
bash $DIR/watcher_process.sh $EVENT $FILE
done

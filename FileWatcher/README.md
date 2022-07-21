
## File change monitor
--------------

We are using inotfy tool in linux for the pupose

### installation [debian]
-------------

    apt-get install inotify-tools

simple usage of this module is like follows

    inotifywait -q -r -m -e modify,create,delete <Directory/File to monitor>

### Documentation
----------------
watchman.sh --> is the file monitor the filechanges

watcher_work.sh --> this file will be executed every time some change is detected by inotifywait

filewatch_service --> this file will be help to make the thing run in background

in the filewatch_service change the "directory=/Projects/file_watcher" with your directory where you keep watchman.sh file

please give execute permission to filewatch_service,watchman.sh

    service filewatch_service start <Directory/File to be watched>


#!/bin/sh

cat <<"EOF"
 __  __                                   _____    ____                     _           _                 
|  \/  |                                 |  __ \  |  _ \                   | |         (_)                
| \  / |   ___    _ __     __ _    ___   | |  | | | |_) |  ______    __ _  | |  _ __    _   _ __     ___  
| |\/| |  / _ \  | '_ \   / _  |  / _ \  | |  | | |  _ <  |______|  / _` | | | | '_ \  | | | '_ \   / _ \ 
| |  | | | (_) | | | | | | (_| | | (_) | | |__| | | |_) |          | (_| | | | | |_) | | | | | | | |  __/ 
|_|  |_|  \___/  |_| |_|  \__, |  \___/  |_____/  |____/            \__,_| |_| | .__/  |_| |_| |_|  \___| 
                            _/ |                                               | |                        
                          |___/                                                |_|                        
EOF

echo "====================================="
echo "MONGODB DATABASE:   $MONGODB_NAME"
echo "MONGODB PORT:       $MONGODB_PORT"
echo "MONGODB_HOST:       $MONGODB_HOST"
echo "MONGODB ENGINE:     $MONGODB_STORAGE_ENGINE"
echo "MONGODB JOURNALING: $MONGODB_JOURNALING"
echo "MONGODB STORAGE:    $MONGODB_MOUNTPOINT"
echo "====================================="
echo "MongoDB URI:        mongodb://$MONGODB_HOST:$MONGODB_PORT"
echo "====================================="

mongod --bind_ip "$MONGODB_HOST" --dbpath "$MONGODB_MOUNTPOINT" --port "$MONGODB_PORT" --storageEngine "$MONGODB_STORAGE_ENGINE" --"$MONGODB_JOURNALING"

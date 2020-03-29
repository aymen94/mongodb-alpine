[![docker_pull_badge](https://badgen.net/docker/pulls/aymen94/mongodb-alpine)](https://hub.docker.com/r/aymen94/mongodb-alpine/)
[![idocker_size_badge](https://badgen.net/docker/size/aymen94/mongodb-alpine)](https://hub.docker.com/r/aymen94/mongodb-alpine/)

# MongoDB Alpine
Alpine Linux with MongoDB.

## Information
* apline 3.9
* MongoDB v4.0.5

## Install

Download image from the public docker hub:
```
$ docker pull aymen94/mongodb-alpine
```
To re-build this image from the dockerfile:
```
$ docker build -t aymen94/mongodb-alpine .
```

## run
```
$ docker run -d --name mongodb -p 27017:27017 aymen94/mongodb-alpine
```

### Run with data mounted to the native host

```
$ docker run -v ~/my_mongo_data:/data/db -it -p 27017:27017 aymen94/mongodb-alpine
```

## Run a shell session

```
$ docker exec -ti mongodb sh
```
To use the mongo shell client:
```
$ docker exec -ti mongodb mongo
```
The mongo shell client can also be run its own container:

## Configuration 
To change internal default configuration
```
MONGODB_STORAGE_ENGINE="wiredTiger"
MONGODB_JOURNALING="nojournal"
MONGODB_PORT="27017"
MONGODB_HOST="0.0.0.0"
MONGODB_MOUNTPOINT="/data/db"
```

```
$ docker run -e MONGODB_STORAGE_ENGINE="NEW ENGINE" -ti mongodb
```




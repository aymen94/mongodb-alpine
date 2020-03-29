FROM alpine:3.9
LABEL maintainer="aymenadvance@gmail.com"

RUN apk add --no-cache mongodb && apk add --no-cache bash && rm -rf /var/cache/apk/*

ENV MONGODB_STORAGE_ENGINE="wiredTiger"
ENV MONGODB_JOURNALING="nojournal"
ENV MONGODB_PORT="27017"
ENV MONGODB_HOST="0.0.0.0"
ENV MONGODB_MOUNTPOINT="/data/db"

VOLUME $MONGODB_MOUNTPOINT
EXPOSE $MONGODB_PORT

COPY entrypoint.sh entrypoint.sh
ENTRYPOINT ["sh","entrypoint.sh"]
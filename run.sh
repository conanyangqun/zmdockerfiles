docker run -d -t -p 1081:80 \
    -e TZ='Asia/Shanghai' \
    -e ZM_DB_USER='' \
    -e ZM_DB_PASS='' \
    -v $PWD/zoneminder/events:/var/cache/zoneminder/events \
    -v $PWD/zoneminder/images:/var/cache/zoneminder/images \
    -v $PWD/zoneminder/mysql:/var/lib/mysql \
    -v $PWD/zoneminder/logs:/var/log/zm \
    --shm-size="512m" \
    --name zoneminder \
    zm:ubuntu-22.04

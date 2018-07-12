#!/bin/sh

if docker ps -a | grep nginx
then
	docker rm -f nginx
fi

docker run -it -d \
	--name nginx \
	-p 80:80 -p 443:443 \
        -v ~/docker/nginx/conf.d:/etc/nginx/conf.d \
	-v ~/docker/nginx/key:/etc/nginx/key \
	-v ~/docker/nginx/log:/var/log/nginx \
	-v ~/docker/nginx/web:/web \
	nginx

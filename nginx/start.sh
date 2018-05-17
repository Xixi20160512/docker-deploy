#!/bin/sh

if docker ps -a | grep nginx
then
	docker rm -f nginx
fi

docker run -it -d \
	--name nginx \
	-p 80:80 -p 443:443 \
	-v ~/docker/nginx/config:/etc/nginx/conf.d \
	-v ~/docker/nginx/log:/var/log/nginx \
	nginx

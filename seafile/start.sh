docker run -d --name seafile \
  -e SEAFILE_SERVER_HOSTNAME=file.xixi2016.cc \
  -e SEAFILE_ADMIN_EMAIL=rxh12352@gmail.com \
  -e SEAFILE_ADMIN_PASSWORD=778899hao \
  -v /opt/seafile-data:/shared \
  -p 8001:80 \
  seafileltd/seafile:latest

#!/bin/bash
set -e
set -o xtrace

echo "Users $USERS"

echo $USERS > /nginx/.htpasswd;

cat /nginx/nginx.conf.tpl | sed 's;{{APP}};'"${APP}"';g'

cat /nginx/nginx.conf.tpl | sed 's;{{APP}};'"${APP}"';g' > /nginx/nginx.conf

nginx -c /nginx/nginx.conf -g 'daemon off;'

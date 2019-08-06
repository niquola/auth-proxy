# auth proxy on nginx

```

docker build -t niquola/ngx-auth .

docker push niquola/ngx-auth
docker run --rm -p 8083:80 -e APP=ya.ru -e USERS='adm:ffELa3xRAtT8.' niquola/ngx-auth:latest

```

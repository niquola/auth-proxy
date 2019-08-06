from nginx

RUN mkdir /nginx
COPY nginx.conf /nginx/nginx.conf.tpl
COPY entrypoint.sh /nginx
RUN chmod a+x /nginx/entrypoint.sh
ENTRYPOINT ["/nginx/entrypoint.sh"]


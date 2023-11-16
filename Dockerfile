FROM nginx:1.15

COPY data/ /usr/share/nginx/html/docs/
COPY nginx.conf.template /etc/nginx/conf.d/default.conf.template

CMD envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'

EXPOSE ${PORT}
FROM nginx:latest

COPY html/index.html /usr/share/nginx/html/index.html
COPY html/50x.html /usr/share/nginx/html/50x.html
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/.htpasswd /etc/nginx/.htpasswd

WORKDIR /usr/share/nginx/html
EXPOSE 80

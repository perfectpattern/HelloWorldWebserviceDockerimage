FROM alpine:3.11

RUN apk --no-cache add nginx && \
    mkdir /run/nginx

ADD www /www
ADD nginx.conf /etc/nginx/

EXPOSE 80

CMD exec nginx -g "daemon off;"

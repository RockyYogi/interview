FROM alpine:latest

RUN apk add --no-cache nginx

RUN mkdir -p /run/nginx

RUN rm -f /var/lib/nginx/html/index.html

# COPY index.html /var/lib/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

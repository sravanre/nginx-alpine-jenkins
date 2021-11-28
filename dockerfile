

FROM nginx:alpine

MAINTAINER sravanre@github.com

COPY index.html /usr/share/nginx/html

EXPOSE 80


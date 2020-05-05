FROM nginx
LABEL maintainer="nls-jajuko"

COPY nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /usr/share/nginx/html/Oskari/dist
ADD dist /usr/share/nginx/html/Oskari/dist

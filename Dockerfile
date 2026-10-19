FROM nginx:alpine
COPY *.html /usr/share/nginx/html/
COPY assets /usr/share/nginx/html/assets
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
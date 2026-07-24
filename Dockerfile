FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY cloud-cost-engineering-handbook.pdf /usr/share/nginx/html/cloud-cost-engineering-handbook.pdf

RUN sed -i 's/listen       80;/listen       8000;/' /etc/nginx/conf.d/default.conf

EXPOSE 8000

CMD ["nginx", "-g", "daemon off;"]

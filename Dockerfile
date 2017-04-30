FROM jwilder/nginx-proxy
RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 1000m;'; \
      echo 'gzip on;'; \
      echo 'gzip_proxied any;'; \
      echo 'gzip_http_version 1.1;'; \
      echo 'gzip_types application/json;'; \
    } > /etc/nginx/conf.d/my_proxy.conf

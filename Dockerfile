FROM jwilder/nginx-proxy:alpine
RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 1000m;'; \
      echo 'proxy_connect_timeout   30;'; \
      echo 'proxy_send_timeout    1200;'; \
      echo 'proxy_read_timeout    1200;'; \
      echo 'send_timeout          1200;'; \
    } > /etc/nginx/conf.d/my_proxy.conf

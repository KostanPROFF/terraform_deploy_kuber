FROM alpine:3.14
RUN apk add --no-cache mysql-client
RUN mkdir -p /var/www/html/ && chmod 777 /var/www/html/
# Установить зависимости для WP-CLI
RUN apk add --no-cache \
        less \
        php7 \
        php7-curl \
        php7-json \
        php7-mbstring \
        php7-mysqli \
        php7-phar \
        php7-openssl \
        php7-dom \
        php7-xml \
        php7-xmlwriter \
        php7-simplexml
# Скачать и установить WP-CLI
RUN wget -O /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x /usr/local/bin/wp
# Set the server name and login credentials
ENV SERVER_NAME 176.36.160.82
ENV USER_NAME root
ENV PASSWORD konstantin123
# Вынесенные скрипты
COPY scripts/setup-wp.sh /usr/local/bin/setup-wp.sh
RUN chmod +x /usr/local/bin/setup-wp.sh /usr/local/bin/setup-wp.sh
# Установить entrypoint на setup-wp.sh
ENTRYPOINT ["/usr/local/bin/setup-wp.sh"]


 
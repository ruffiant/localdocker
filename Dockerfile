FROM docker/whalesay:latest
LABEL Name=localdocker Version=0.0.1
RUN apt-get -y update && apt-get install -y fortunes
CMD ["sh", "-c", "/usr/games/fortune -a | cowsay"]
FROM php:8.0-fpm
# 安装 Redis 扩展
# RUN pecl install redis \
#     && docker-php-ext-enable redis
# ===================
FROM php:8.0-cli
WORKDIR /app
COPY . .
CMD ["php", "-S", "0.0.0.0:8000"]

ENV MY_ENV_VAR=value
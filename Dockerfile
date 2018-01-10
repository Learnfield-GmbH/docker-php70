## Github URL: https://github.com/ivodvb/docker-php70
## Docker URL: https://hub.docker.com/r/ivodvb/docker-php70
## Ubuntu 16.04
#############################################################################
FROM phusion/baseimage:0.9.22

# CREATED AND MAINTAINED BY Ivo van Beek <idvbeek@gmail.com>


# Default baseimage settings
ENV HOME /root
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh
CMD ["/sbin/my_init"]
ENV DEBIAN_FRONTEND noninteractive

# todo remove sudo
RUN apt-get update \
    && apt-get install -y \
    libsqlite3-0 \
    git \
    sudo \
    zip \
    unzip \
    php7.0 \
    php7.0-fpm \
    php7.0-cli \
    php7.0-mysql \
    php7.0-mcrypt \
    php7.0-curl \
    php7.0-gd \
    php7.0-intl \
    php-memcached \
    php7.0-sqlite \
    php7.0-zip \
    php7.0-dom \
    php7.0-mbstring \
    wkhtmltopdf \
    whois \
    python
    
RUN apt-get clean \
	&& rm -rf /var/lib/apt/lists/* \
              /tmp/* \
              /var/tmp/*


VOLUME ["/etc/skoovefrontend"]

WORKDIR /etc/skoovefrontend

EXPOSE 80

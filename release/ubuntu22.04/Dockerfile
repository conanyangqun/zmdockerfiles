FROM ubuntu:22.04
LABEL author="yangqun"
LABEL github="https://github.com/conanyangqun" 

# Update base packages
RUN apt update \
    && apt upgrade -y

# Install pre-reqs
RUN apt install -y software-properties-common

# Configure Zoneminder PPA
RUN add-apt-repository -y ppa:iconnor/zoneminder-1.36 \
    && apt update

RUN DEBIAN_FRONTEND=noninteractive apt install -y zoneminder \
    && a2enmod rewrite \
    && a2enconf zoneminder

# Setup Volumes
VOLUME /var/cache/zoneminder/events /var/cache/zoneminder/images /var/lib/mysql /var/log/zm

# Expose http port
EXPOSE 80

# Configure entrypoint
COPY utils/entrypoint.sh /usr/local/bin/
RUN chmod 755 /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

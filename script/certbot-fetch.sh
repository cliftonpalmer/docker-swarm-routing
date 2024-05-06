#!/bin/bash
# source: https://eff-certbot.readthedocs.io/en/latest/install.html#alternative-1-docker

docker run -it --rm --name certbot \
            -v "/etc/letsencrypt:/etc/letsencrypt" \
            -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
            -v "$HOME/.aws:/aws" \
            -e "AWS_CONFIG_FILE=/aws/config" \
            -e "AWS_SHARED_CREDENTIALS_FILE=/aws/credentials" \
            -p 80:80 \
            certbot/dns-route53 certonly

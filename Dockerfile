FROM wordpress:latest

# Environment variables are usually injected by Railway
# but we can set defaults or documentation here for custom PHP limits etc.
# COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

EXPOSE 80

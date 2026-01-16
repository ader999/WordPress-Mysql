FROM wordpress:latest

# Fix for AH00534: "More than one MPM loaded"
# Only one MPM can be active at a time.
RUN a2dismod mpm_event mpm_worker || true \
    && a2enmod mpm_prefork

EXPOSE 80

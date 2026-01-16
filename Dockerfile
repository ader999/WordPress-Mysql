FROM wordpress:latest

# Fix for AH00534: "More than one MPM loaded"
# Explicitly remove all MPM symlinks to ensure a clean slate, then enable prefork.
# This prevents conflicts if the base image or platform injects multiple MPMs.
RUN rm -f /etc/apache2/mods-enabled/mpm_*.load \
    && rm -f /etc/apache2/mods-enabled/mpm_*.conf \
    && a2enmod mpm_prefork

EXPOSE 80

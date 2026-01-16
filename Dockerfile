FROM wordpress:latest

# Fix for AH00534: "More than one MPM loaded"
# We use a custom CMD to remove conflicting MPMs at RUNTIME.
# This handles cases where the platform (like Railway) might inject checks or configs
# that revert build-time changes.
CMD /bin/bash -c "rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_worker.load && exec apache2-foreground"

EXPOSE 80

FROM mysql:8.0

# Copy custom configuration file if needed
# COPY my.cnf /etc/mysql/conf.d/

# Environment variables are usually injected by Railway
# but we can set defaults or documentation here
# ENV MYSQL_ROOT_PASSWORD=root
# ENV MYSQL_DATABASE=wordpress
# ENV MYSQL_USER=wordpress
# ENV MYSQL_PASSWORD=wordpress

EXPOSE 3306

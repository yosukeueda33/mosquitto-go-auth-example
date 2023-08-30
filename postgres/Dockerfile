# Use the official PostgreSQL image as base
FROM postgres:13

# Add the SQL script to the image
COPY init.sql /docker-entrypoint-initdb.d/

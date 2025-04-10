# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy the custom web page into the Nginx default directory

COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for the web server
EXPOSE 80
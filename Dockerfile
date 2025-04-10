# Use the official Nginx image as the base image
FROM nginx:alpine

# Install curl for testing (important for run-tests.sh)
RUN apk add --no-cache curl

# Copy the custom web page
COPY index.html /usr/share/nginx/html/index.html

# Copy the test script
COPY run-tests.sh /run-tests.sh
RUN chmod +x /run-tests.sh

# Expose port 80
EXPOSE 80

FROM scratch

# Add Ubuntu root filesystem
ADD rootfs.tar.gz /

# Install nginx
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*

# Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/


COPY public_html /var/www/html

# Expose the port that your application runs on (e.g., 80 for a web server)
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
# Use the official Nginx image from Docker Hub as the base
FROM nginx:latest

# Optional: Add metadata to the image
LABEL maintainer="yourname@example.com"
LABEL description="Sample Nginx Dockerfile for a static website"

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy your custom configuration file into the container
# (Ensure you have a 'nginx.conf' in the same directory as this Dockerfile)
#COPY nginx.conf /etc/nginx/conf.d/

# Copy your static website content to the default Nginx html directory
#COPY ./html /usr/share/nginx/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx and keep the process running in the foreground
CMD ["nginx", "-g", "daemon off;"]

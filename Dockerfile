# Use the official Nginx image from Docker Hub
FROM public.ecr.aws/nginx/nginx:latest

# Copy custom nginx config if needed
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

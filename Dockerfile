# Use the official Nginx image as the base image
FROM nginx:alpine

# Maintain the Dockerfile
LABEL maintainer="techkedgecoonnect@gmail.com"

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy the static website files to the working directory
COPY . .

# Expose port 80 to be able to access the website
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
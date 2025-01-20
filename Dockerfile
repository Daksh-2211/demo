# Use the official lightweight Nginx image as the base
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove the default Nginx HTML files
RUN rm -rf ./*

# Copy the custom HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to serve the application
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]

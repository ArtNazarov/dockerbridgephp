# Use the official PHP image as the base image
FROM php:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the service.php file to the working directory
COPY bridge.php .

# Expose port 80 for the PHP application
EXPOSE 8080

# Start the PHP built-in web server to serve the application
CMD ["php", "-S", "0.0.0.0:8080"]

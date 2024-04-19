# Use the httpd base image
FROM httpd:latest

# Create a volume called "saves"
VOLUME /usr/local/apache2/saves

# Set the working directory
WORKDIR /usr/local/apache2/htdocs/

# Remove everything from the working directory
RUN rm -rf ./*

# Optionally, you can copy additional website files into the container
# For example, if you have a folder named "my_website" with your HTML files:
COPY . /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

#!/bin/bash

# Update system
sudo yum update -y

# Install Apache
sudo yum install httpd -y

# Start and enable Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Install PHP and required extensions
sudo yum install php php-mysqlnd -y

# Restart Apache
sudo systemctl restart httpd

echo "Apache and PHP installed successfully"



#!/bin/bash

# Go to web directory
cd /var/www/html

# Download WordPress
sudo wget https://wordpress.org/latest.tar.gz

# Extract files
sudo tar -xzf latest.tar.gz

# Set ownership
sudo chown -R apache:apache wordpress

echo "WordPress installed successfully"



#!/bin/bash

# Set correct permissions
sudo chmod -R 755 /var/www/html/wordpress

echo "Permissions configured successfully"

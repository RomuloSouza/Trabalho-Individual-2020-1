#!/bin/bash

# Create database
echo "Creating database"
rake db:create

# Create migrations
echo "Creating migrations"
rake db:migrate

# Initialize server
echo "Initializing server"
rails server -b 0.0.0.0

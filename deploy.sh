#!/bin/bash

# Iterate through all directories in the current directory
for dir in */; do
    dir=${dir%*/}  # Remove the trailing slash from the directory name
    cd "$dir" || continue  # Move to the next directory if the change fails

    # Check if the deploy.sh file exists
    if [ -f "deploy.sh" ]; then
        echo "Executing deploy.sh in directory: $dir"
        bash deploy.sh  # Execute deploy.sh
    else
        echo "No deploy.sh file in directory: $dir"
    fi

    cd ..  # Return to the parent directory
done

# Deploy the database and phpMyAdmin
docker-compose up -d --build db phpmyadmin

# Deploy the back-end
docker-compose up -d --build courroux-sme

# Deploy the front-end
docker-compose up -d --build courroux-sapp

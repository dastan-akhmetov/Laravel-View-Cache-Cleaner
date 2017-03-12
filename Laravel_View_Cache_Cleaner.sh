#!/bin/bash
#
# 
# Name: Laravel View Cache Cleaner
# Short name: LVCC v1.0
# Version: 1.0.0
# Date: 12 March 2017
# 
# Author: Dastan Akhmetov
# Email: hello@hophmahn.com
# License: Free
#
# Description:
#
# This shell script clears the views of Laravel Application
# by watching file changes in the project.
# The reason for that is a cached views are not updated instantly after
# the project file change. You have to refresh web page several times
# until it replaces the old view cache with the new one.
# That is why I decided to create a small shell script which removes
# all the generated php cache files, so after removing it, Laravel
# could generate a new templates then respond with them to the browser.
# 
# For best practice, you can use it with PhpStorm's File Watcher or
# any of your choice.
#
# You only have to provide a path to the cache folder as an argument.
#
# Make the script executable by running: 
# 
# chmod +x Laravel_View_Cache_Cleaner.sh
# 
# Example: 
# 
# ./Laravel_View_Cache_Cleaner.sh /var/www/{Laravel}/storage/framework/views 
#
#
#
#
#
function cleanCacheFolder() {
    # Change the directory to the cache folder
    cd $1

    # Find all the .php files in the directory
    # and store it as an array
    array=(`find . -type f -name '*.php'`)

    # If search found some files
    if [ -n "$array" ]; then
        # Remove all the .php files
        rm *.php
    else
        # Otherwise return a simple message
        echo "Nothing to delete."
        echo "The folder has no \".php\" files."
    fi
}

# If path is provided
if [ -n "$1" ]; then
    # Call the function
    cleanCacheFolder $1
else
    # Otherwise show error message
    echo 'Please, provide a path to the -> "storage/framework/views" folder.'
fi



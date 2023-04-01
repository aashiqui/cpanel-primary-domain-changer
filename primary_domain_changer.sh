#!/bin/bash

# primary_domain_changer.sh

NEW_DOMAIN="$1"
USERNAME=$(whoami)

# Load the cPanel user file to get the current main domain
source /var/cpanel/userdata/$USERNAME/main

# Change the primary domain
/usr/local/cpanel/bin/whmapi1 modifyacct user=$USERNAME domain=$NEW_DOMAIN

# Update the document root for the new primary domain
sed -i "s/$MAIN_DOMAIN/$NEW_DOMAIN/g" /var/cpanel/userdata/$USERNAME/main

# Rebuild the Apache configuration
/scripts/rebuildhttpdconf

# Restart Apache
/scripts/restartsrv_httpd

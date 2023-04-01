#!/bin/bash

# install_plugin.sh

# Set the remote URL where the plugin files are hosted (use HTTPS)
REMOTE_URL="https://raw.githubusercontent.com/aashiqui/cpanel-primary-domain-changer/main/"

# Set the local plugin directory
PLUGIN_DIR="/usr/local/cpanel/base/frontend/jupitor/primary_domain_changer/"

# Create the plugin directory
mkdir -p "$PLUGIN_DIR"

# Download the plugin files using curl with the '-L' flag to follow redirects
curl -L -o "$PLUGIN_DIR/change_domain.php" "${REMOTE_URL}change_domain.php"
curl -L -o "$PLUGIN_DIR/primary_domain_changer.sh" "${REMOTE_URL}primary_domain_changer.sh"
curl -L -o "$PLUGIN_DIR/index.live.php" "${REMOTE_URL}index.live.php"
curl -L -o "$PLUGIN_DIR/register_plugin.sh" "${REMOTE_URL}register_plugin.sh"

# Make the necessary files executable
chmod +x "$PLUGIN_DIR/primary_domain_changer.sh"
chmod +x "$PLUGIN_DIR/register_plugin.sh"

# Register the plugin
"$PLUGIN_DIR/register_plugin.sh"

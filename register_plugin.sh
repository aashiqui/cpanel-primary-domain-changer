#!/bin/bash

# register_plugin.sh

# Plugin information
PLUGIN_NAME="Primary Domain Changer"
PLUGIN_PATH="/usr/local/cpanel/base/frontend/paper_lantern/primary_domain_changer/index.live.php"

# Create the plugin directory if it does not exist
mkdir -p /usr/local/cpanel/whostmgr/docroot/cgi/addon_plugins/

# Register the plugin
echo -e "---\nname: $PLUGIN_NAME\nuri: $PLUGIN_PATH" > /usr/local/cpanel/whostmgr/docroot/cgi/addon_plugins/primary_domain_changer.conf

# Restart cPanel service
/scripts/restartsrv_cpsrvd

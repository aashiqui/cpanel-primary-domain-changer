cPanel Primary Domain Changer Plugin
=====================================

Overview
--------
The cPanel Primary Domain Changer Plugin allows users to change their primary domain easily through the cPanel interface. This plugin is compatible with cPanel's Paper Lantern theme.

Features
--------
- Easy-to-use interface for changing the primary domain
- Input validation and sanitization
- CSRF protection

Installation
------------
To install the cPanel Primary Domain Changer plugin, run the following command as the root user on your cPanel server:

curl -o install_plugin.sh https://raw.githubusercontent.com/aashiqui/cpanel-primary-domain-changer/main/install_plugin.sh && chmod +x install_plugin.sh && ./install_plugin.sh

This command downloads the "install_plugin.sh" script, makes it executable, and runs it to install the plugin.

Usage
-----
After installation, log in to your cPanel account. The "Primary Domain Changer" plugin should be available in the cPanel interface. To change your primary domain:

1. Click on the "Primary Domain Changer" plugin icon in the cPanel interface.
2. Enter the new primary domain in the input field provided.
3. Click the "Change Domain" button to update the primary domain.

Security Considerations
-----------------------
Although this plugin has been designed with security in mind, it is recommended to consult with a security expert to conduct a comprehensive security review before deploying it on a production server.

License
-------
This plugin is released under the MIT License. For more information, please refer to the LICENSE file included with the plugin.

Support
-------
For support or to report any issues with the plugin, please visit the GitHub repository at:

https://github.com/aashiqui/cpanel-primary-domain-changer

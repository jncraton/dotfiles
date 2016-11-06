
# Remove apps that I don't use
yes | sudo apt-get --purge remove  \
libreoffice-core \
`# Logger` \
zeitgeist-core \
`# Games` \
aisleriot gnome-mahjongg gnome-mines gnome-sudoku \
`# Default Gnome apps that I do not use` \
gnome-calculator gnome-calendar \
`# Sounds` \
ubuntu-sounds ubuntu-touch-sounds \
`# Email` \
 thunderbird \
`# I do not RTM` \
 gnome-user-guide ubuntu-docs \
`# SSO plugins` \
 account-plugin-facebook account-plugin-flickr account-plugin-google \
`# Accessibility` \
 brltty \
`# System testing` \
 checkbox-converged checkbox-gui \
`# Backup` \
 deja-dup \
`# Example content` \
 example-content \
`# Flash` \
 flashplugin-installer  \
`# Onscreen keyboard` \
 onboard \
`# Music player` \
 rhythmbox \
`# Media player` \
 totem \
`# Text editor` \
 gedit \
`# GUI BT Client` \
 transmission-common \
`# GUI update manager` \
 update-manager \
`# Ubuntu browser` \
 webapp-container webbrowser-app \
`# Error reporting` \
 whoopsie
# Remove leftovers
yes | sudo apt-get autoremove
sudo apt-get clean

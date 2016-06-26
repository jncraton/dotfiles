# Remove apps that I don't use
yes | sudo apt-get --purge remove  \
libreoffice-core \
`# Logger` \
zeitgeist-core \
`# Games` \
aisleriot gnome-mahjongg gnome-mines gnome-sudoku \
`# Default Gnome apps that I do not use` \
gnome-calculator gnome-calendar \
`# Wallpapers and sounds` \
ubuntu-sounds ubuntu-touch-sounds ubuntu-wallpapers \
`# Email` \
 thunderbird \
`# I do not RTM` \
 gnome-user-guide ubuntu-docs \
`# SSO plugins` \
 account-plugin-facebook account-plugin-flickr account-plugin-google \
`# Bluetooth support` \
 bluez gnome-bluetooth indicator-bluetooth \
`# Accessibility` \
 brltty \
`# System testing` \
 checkbox-converged checkbox-gui \
`# Backup` \
 deja-dup \
`# Example content` \
 example-content \
`# Archive manager` \
 file-roller \
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
 webapp-container webbrowser-app
`# Error reporting` \
 whoopsie
# Remove leftovers
yes | sudo apt-get autoremove
sudo apt-get clean

# Install my favorites
yes | sudo apt-get install scite vlc p7zip-full nautilus-dropbox git

# Finish Dropbox install (GUI interaction required)
dropbox start -i



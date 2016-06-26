# Create symlinks (system specifhttps://bricks.stackexchange.com/users/login?ssrc=head&returnurl=http%3a%2f%2fbricks.stackexchange.com%2fic)
sudo ln -s /media/jncraton/2CFAF2F9FAF2BDE0/Dropbox /dropbox

# Symlink scite settings
sudo rm -rf /usr/share/scite
sudo ln -s /dropbox/Programs/ /usr/share/scite

# Symlink ssh keys
sudo rm -rf ~/.ssh
sudo ln -s /dropbox/programs/sys/home/User/.ssh ~/.ssh

# Copy scripts to /bin
sudo cp scripts/* /bin

# Symlink home directories
sudo rm -rf ~/Public
sudo rm -rf ~/Templates
sudo rm -rf ~/Videos
sudo rm -rf ~/Music
sudo ln -s /dropbox/music ~/Music
sudo rm -rf ~/Pictures
sudo ln -s /dropbox/photos ~/Pictures
sudo rm -rf ~/Documents
sudo ln -s /dropbox/documents ~/Documents
sudo rm -rf ~/Downloads
sudo ln -s /dropbox/temp ~/Downloads

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

# This may have gotten removed
yes | sudo apt-get install unity-control-center --no-install-recommends

# Disable mouse acceleration
xinput --set-prop "Razer Razer Diamondback Optical Mouse" "Device Accel Velocity Scaling" 1
xinput --set-prop "Razer Razer Diamondback Optical Mouse" "Device Accel Profile" -1

# Install my favorites
yes | sudo apt-get install wmctrl scite vlc p7zip-full nautilus-dropbox git

# Veracrypt deps
yes | sudo apt-get install dmsetup

# Development deps
yes | sudo apt-get install phantomjs nodejs python-pip sqlite3 libdbus-1-dev libxml2-dev libxslt1-dev libdbus-glib-1-dev
pip install flask ofxparse ofxclient

# Git config

git config --global user.email "jncraton@gmail.com"
git config --global user.name "Jon Craton"
git config --global push.default simple

# Finish Dropbox install (GUI interaction required)
dropbox start -i

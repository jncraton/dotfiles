# Create symlinks (system speciffic)
sudo ln -s /media/jncraton/2CFAF2F9FAF2BDE0/Dropbox /dropbox
sudo ln -s /media/jncraton/30DE44BCDE447BDA/Dropbox /dropbox

# Symlink scite settings
sudo rm -rf /usr/share/scite
sudo ln -s /dropbox/Programs/ /usr/share/scite

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

# This may have gotten removed
yes | sudo apt-get install unity-control-center --no-install-recommends

# Install my favorites
yes | sudo apt-get install openssh-server wmctrl scite vlc nautilus-dropbox git ffmpeg abiword gnumeric libjpeg-turbo-progs jpegoptim 

# Veracrypt deps
yes | sudo apt-get install dmsetup

# Development deps
yes | sudo apt-get install phantomjs nodejs python-pip sqlite3 libdbus-1-dev libxml2-dev libxslt1-dev libdbus-glib-1-dev pandoc
pip install flask ofxparse ofxclient

# Git config

git config --global user.email "jncraton@gmail.com"
git config --global user.name "Jon Craton"
git config --global push.default simple

# Finish Dropbox install (GUI interaction required)
dropbox start -i
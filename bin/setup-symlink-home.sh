sudo rm -f /root/.ssh
sudo ln -sf /dropbox/home/.ssh /root/.ssh
sudo rm -f /home/jncraton/.ssh
ln -sf /dropbox/home/.ssh /home/jncraton/.ssh

sudo ln -sf /dropbox/home/.bashrc /root/.bashrc
ln -sf /dropbox/home/.bashrc /home/jncraton/.bashrc

sudo ln -sf /dropbox/share/joncraton/taskmanager/todo.txt /root/todo.txt
ln -sf /dropbox/share/joncraton/taskmanager/todo.txt /home/jncraton/todo.txt

sudo mkdir -p /root/.config/micro
sudo rm -f /root/.config/micro/bindings.json
sudo rm -f /root/.config/micro/settings.json
sudo ln -sf /dropbox/home/.config/micro/bindings.json /root/.config/micro/bindings.json
sudo ln -sf /dropbox/home/.config/micro/settings.json /root/.config/micro/settings.json

mkdir -p /home/jncraton/.config/micro
sudo rm -f /home/jncraton/.config/micro/bindings.json
sudo rm -f /home/jncraton/.config/micro/settings.json
ln -sf /dropbox/home/.config/micro/bindings.json /home/jncraton/.config/micro/bindings.json
ln -sf /dropbox/home/.config/micro/settings.json /home/jncraton/.config/micro/settings.json

sudo rm -f /home/jncraton/.config/openbox
mkdir -p /home/jncraton/.config/openbox
sudo rm -f /home/jncraton/.config/openbox/rc.xml
sudo rm -f /home/jncraton/.config/openbox/autostart
ln -sf /dropbox/home/.config/openbox/rc.xml /home/jncraton/.config/openbox/rc.xml
ln -sf /dropbox/home/.config/openbox/autostart /home/jncraton/.config/openbox/autostart

sudo ln -sf /dropbox/home/.gitconfig /root/.gitconfig
ln -sf /dropbox/home/.gitconfig /home/jncraton/.gitconfig

sudo ln -sf /dropbox/home/.Xresources /root/.Xresources
ln -sf /dropbox/home/.Xresources /home/jncraton/.Xresources

sudo rm -f /root/bin
sudo ln -sf /dropbox/home/bin /root/bin
sudo rm -f /home/jncraton/bin
ln -sf /dropbox/home/bin /home/jncraton/bin

sudo rm -rf /home/jncraton/Public
sudo rm -rf /home/jncraton/Templates
sudo rm -rf /home/jncraton/Videos
sudo rm -rf /home/jncraton/Music
sudo rm -rf /home/jncraton/Pictures
sudo rm -rf /home/jncraton/Documents
sudo rm -rf /home/jncraton/Downloads
sudo rm -f /home/jncraton/music
sudo rm -f /home/jncraton/pictures
sudo rm -f /home/jncraton/photos
sudo rm -f /home/jncraton/documents
sudo rm -f /home/jncraton/tmp
ln -sf /dropbox/music /home/jncraton/music
ln -sf /dropbox/photos /home/jncraton/photos
ln -sf /dropbox/documents /home/jncraton/documents
ln -sf /dropbox/temp /home/jncraton/tmp
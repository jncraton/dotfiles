sudo rm -f /root/.ssh
sudo ln -sf /dropbox/programs/sys/home/User/.ssh /root/.ssh
sudo rm -f /home/jncraton/.ssh
sudo ln -sf /dropbox/programs/sys/home/User/.ssh /home/jncraton/.ssh

sudo ln -sf /dropbox/home/.bashrc /root/.bashrc
sudo ln -sf /dropbox/home/.bashrc /home/jncraton/.bashrc

sudo rm -f /root/.config
sudo ln -sf /dropbox/home/.config /root/.config
sudo rm -f /home/jncraton/.config
sudo ln -sf /dropbox/home/.config /home/jncraton/.config

sudo ln -sf /dropbox/home/.gitconfig /root/.gitconfig
sudo ln -sf /dropbox/home/.gitconfig /home/jncraton/.gitconfig

sudo rm -f /root/bin
sudo ln -sf /dropbox/home/bin /root/bin
sudo rm -f /home/jncraton/bin
sudo ln -sf /dropbox/home/bin /home/jncraton/bin

sudo rm -f /home/jncraton/Public
sudo rm -f /home/jncraton/Templates
sudo rm -f /home/jncraton/Videos
sudo rm -f /home/jncraton/Music
sudo rm -f /home/jncraton/Pictures
sudo rm -f /home/jncraton/Documents
sudo rm -f /home/jncraton/Downloads
sudo ln -sf /dropbox/music /home/jncraton/Music
sudo ln -sf /dropbox/photos /home/jncraton/Pictures
sudo ln -sf /dropbox/documents /home/jncraton/Documents
sudo ln -sf /dropbox/temp /home/jncraton/Downloads
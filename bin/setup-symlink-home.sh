sudo rm /root/.ssh
sudo rm /home/jncraton/.ssh
sudo ln -s /dropbox/programs/sys/home/User/.ssh /root/.ssh
sudo ln -s /dropbox/programs/sys/home/User/.ssh /home/jncraton/.ssh

sudo rm /root/.bashrc
sudo rm /home/jncraton/.bashrc
sudo ln -s /dropbox/home/.bashrc /root/.bashrc
sudo ln -s /dropbox/home/.bashrc /home/jncraton/.bashrc

sudo rm /root/.config
sudo rm /home/jncraton/.config
sudo ln -s /dropbox/home/.config /root/.config
sudo ln -s /dropbox/home/.config /home/jncraton/.config

sudo rm /root/.gitconfig
sudo rm /home/jncraton/.gitconfig
sudo ln -s /dropbox/home/.gitconfig /root/.gitconfig
sudo ln -s /dropbox/home/.gitconfig /home/jncraton/.gitconfig

sudo rm /root/bin
sudo rm /home/jncraton/bin
sudo ln -s /dropbox/home/bin /root/bin
sudo ln -s /dropbox/home/bin /home/jncraton/bin
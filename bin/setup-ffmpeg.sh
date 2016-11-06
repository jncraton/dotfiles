# Build ffmpeg
sudo apt-get -y install autoconf automake build-essential libass-dev libfreetype6-dev \
  libsdl1.2-dev libtheora-dev libtool libva-dev libvdpau-dev libvorbis-dev libxcb1-dev libxcb-shm0-dev \
  libxcb-xfixes0-dev pkg-config texinfo zlib1g-dev yasm libmp3lame-dev libx264-dev libx265-dev && \
cd /tmp && \
wget -O fdk-aac.tar.gz https://github.com/mstorsjo/fdk-aac/tarball/master && \
tar xzvf fdk-aac.tar.gz && \
cd mstorsjo-fdk-aac* && \
autoreconf -fiv && \
./configure --disable-shared && \
sudo make && sudo make install && sudo make distclean && \
sudo cp /usr/local/lib/* /usr/lib && \
git clone git://source.ffmpeg.org/ffmpeg.git && \
cd ffmpeg && \
./configure --enable-gpl --enable-libx264 --enable-libx265 --enable-libmp3lame --enable-nonfree --enable-libfdk-aac && \
sudo make && \
sudo make install
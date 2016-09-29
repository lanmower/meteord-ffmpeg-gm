FROM abernix/meteord:base
RUN apt-get update
RUN apt-get install graphicsmagick -y --fix-missing
RUN apt-get install wget -y --fix-missing
RUN wget https://raw.githubusercontent.com/notDavid/full-ffmpeg-in-debian-wheezy/master/buildffmpeg.sh -O /tmp/ffmpeg.sh -O /tmp/ffmpeg.sh
RUN chmod +x /tmp/ffmpeg.sh
RUN mkdir ~/ffmpeg_sources
RUN cd ~/ffmpeg_sources
RUN git clone https://chromium.googlesource.com/webm/libvpx ~/ffmpeg_sources/libvpx-v1.3.0
RUN /tmp/ffmpeg.sh > /tmp/ffmpeg.log
RUN apt-get -f install


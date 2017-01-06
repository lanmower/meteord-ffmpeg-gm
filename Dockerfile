FROM abernix/meteord:base 
RUN apt-get install graphicsmagick -y
RUN apt-get install wget -y

RUN https://gist.githubusercontent.com/lanmower/38e6175febd8b9a567cc9755ce7221db/raw/ad869f2abf0e56e0c83a3b7595e583de3d04f131/ffdshow.sh -O /tmp/ffmpeg.sh
RUN chmod +x /tmp/ffmpeg.sh
RUN /tmp/ffmpeg.sh
VOLUME ["/store/cfs"]

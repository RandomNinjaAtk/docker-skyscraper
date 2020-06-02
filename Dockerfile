FROM lsiobase/ubuntu:focal
LABEL maintainer="RandomNinjaAtk"

RUN \
	echo "************ install dependencies ************" && \
	echo "************ install packages ************" && \
	apt-get update -qq && \
	apt-get install -qq -y \
		build-essential \
		wget \
		qt5-default && \
	apt-get purge --auto-remove -y && \
	apt-get clean && \
	cd && \
	mkdir skysource && \
	cd skysource && \
	wget -q -O - https://raw.githubusercontent.com/muldjord/skyscraper/master/update_skyscraper.sh | bash# ports and volumes

# Volumes
VOLUME /roms
VOLUME /cache

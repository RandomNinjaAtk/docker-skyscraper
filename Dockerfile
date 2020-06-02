FROM lsiobase/ubuntu:focal
LABEL maintainer="RandomNinjaAtk"

RUN \
	echo "************ install dependencies ************" && \
	echo "************ install packages ************" && \
	apt-get update && \
	apt-get install -y \
		build-essential \
		wget \
		qt5-default && \
	apt-get purge --auto-remove -y && \
	apt-get clean && \
	echo "************ install skyscraper ************" && \
	cd && \
	mkdir skysource && \
	cd skysource && \
	wget -q -O - https://raw.githubusercontent.com/muldjord/skyscraper/master/update_skyscraper.sh && \
	sed -i 's/sudo //g' update_skyscraper.sh && \
	bash update_skyscraper.sh
	
# Volumes
VOLUME /roms
VOLUME /cache

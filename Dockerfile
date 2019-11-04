FROM evryfs/docker-baseimage
RUN apt-get update && apt -y install gnupg software-properties-common && \
  wget -O - https://facebook.github.io/mcrouter/debrepo/bionic/PUBLIC.KEY | apt-key add && \
  add-apt-repository 'deb https://facebook.github.io/mcrouter/debrepo/bionic bionic contrib' && \
  apt-get update && \
  apt-get -y install mcrouter && \
  apt-get -y clean && \
	rm -rf /var/cache/apt /var/lib/apt/lists/* /tmp/* /var/tmp/*

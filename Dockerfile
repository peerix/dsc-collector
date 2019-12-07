FROM debian:buster as runner
MAINTAINER atanas@argirov.org

ENV RELEASE=buster
ENV DSC_CONF=/etc/dsc/dsc.conf

# add DNS OARC keys
RUN apt -y update && \
    apt -y install \ 
	gnupg2 \
	curl && \ 
    curl https://pkg.dns-oarc.net/dns-oarc.distribution.key.gpg | apt-key add - && \
    echo "deb http://pkg.dns-oarc.net/debian ${RELEASE} main" | tee /etc/apt/sources.list.d/dns-oarc.list

# install DSC collector
RUN apt -y update && \
    apt -y install dsc 

CMD dsc -f "${DSC_CONF}"

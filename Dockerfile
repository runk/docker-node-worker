FROM ubuntu:trusty

RUN apt-get update

RUN apt-get install --no-install-recommends -y -q curl python build-essential git ca-certificates ssh
RUN apt-get clean && rm /var/lib/apt/lists/*_*

RUN mkdir /nodejs && curl https://nodejs.org/dist/v0.12.7/node-v0.12.7-linux-x64.tar.gz | \
    tar xzf - -C /nodejs --strip-components=1

ENV PATH $PATH:/nodejs/bin
ENV NODE_ENV production
#
ADD start.sh /tmp/
CMD sh /tmp/start.sh

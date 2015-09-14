FROM google/nodejs-runtime

ADD start.sh /tmp/
CMD sh /tmp/start.sh

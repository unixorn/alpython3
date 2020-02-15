FROM alpine:3.11

LABEL description="Alpine 3.11 + Python3 + Pip"
LABEL maintainer "Joe Block <jpb@unixorn.net>"

# Set up python & pip
RUN apk add python3 python3-dev && \
  pip3 install --upgrade pip setuptools && \
  if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi

CMD ["sh"]

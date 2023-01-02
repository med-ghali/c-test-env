FROM debian

RUN mkdir -p /home/app

RUN apt-get update && apt-get install -y \
  gcc \
  make \
  git \
  curl \
  vim \
  && rm -rf /var/lib/apt/lists/*

COPY . /home/app
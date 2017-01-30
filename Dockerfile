FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.3.0

RUN gem install bio-cnls_screenscraper --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bio-cnls_screenscraper"]
CMD ["--help"]

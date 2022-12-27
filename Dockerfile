FROM ruby:3.2.0-bullseye As base
ENV ROOT="/app"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo
WORKDIR ${ROOT}
RUN apt-get update; \
  apt-get install -y --no-install-recommends \
  nodejs \
  npm \
  mariadb-client \
  tzdata  \
  graphviz  \
  && rm -rf /var/lib/apt/lists/*

FROM base as dev
COPY . ${ROOT}
RUN gem install bundler
RUN bundle install --jobs 4

FROM base as prd
COPY . ${ROOT}
RUN gem install bundler
RUN bundle config set without development test
RUN bundle install --jobs 4

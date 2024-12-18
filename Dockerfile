# syntax=docker/dockerfile:1
# This Dockerfile doesn't work on its own, only in conjunction with the docker-compose.yml in the parent folder.
# Compiles markdown into a static HTML in the larger image builder which is then copied over to the volume at runtime of the container.
# The caddy server in the parent setup then serves the HTML pages.
# Feel free to refactor this if you find a better way, this was the only method I found that didn't require volume deletion for updates to show.
# The two-step build process results in a smaller image but that may be unnecessary as the container is only started for a moment anyways.

FROM ruby:3
WORKDIR /src
RUN gem install bundler
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install
COPY . .
RUN bundle exec jekyll build

FROM alpine
COPY --from=0 /src/_site /html_tmp
# update volume on next startup
ENTRYPOINT test -f "/html_tmp/index.html" && rm -rf /html/* && mv /html_tmp/* /html

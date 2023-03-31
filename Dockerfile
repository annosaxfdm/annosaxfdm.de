# syntax=docker/dockerfile:1
FROM jekyll/jekyll:4 AS jekyll
COPY Gemfile* .
RUN jekyll clean
COPY . .
RUN jekyll build

FROM alpine AS runtime
COPY --link --from=jekyll /srv/jekyll/_site /html_tmp
# update volume on startup
ENTRYPOINT rm -rf /html/* && mv /html_tmp/* /html

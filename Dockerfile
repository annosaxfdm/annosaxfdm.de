# syntax=docker/dockerfile:1
FROM jekyll/jekyll:4.2.2 AS jekyll
COPY Gemfile* ./
COPY . .
RUN jekyll build

FROM alpine AS runtime
COPY --from=jekyll /srv/jekyll/_site /html_tmp
# update volume on next startup
ENTRYPOINT test -f "/html_tmp/index.html" && rm -rf /html/* && mv /html_tmp/* /html

ARG RUBY_IMAGE=ruby:3.3.0-slim-bookworm
FROM ${RUBY_IMAGE}

ENV LANG=C.UTF-8 \
  TZ=Asia/Tokyo

WORKDIR /api

# enable JIT compiler
ENV RUBY_YJIT_ENABLE 1

ARG BUNDLE_WITHOUT="development test"
ENV BUNDLE_WITHOUT $BUNDLE_WITHOUT

RUN apt-get update -qq && apt-get install -y libmysqld-dev build-essential git

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000
CMD ["./bin/rails", "server"]

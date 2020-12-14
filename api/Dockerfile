FROM ruby:2.5.7

RUN gem install bundler:2.1.4

WORKDIR /api

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

COPY ./docker-entrypoint.sh /

RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]

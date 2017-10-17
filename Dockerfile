FROM ruby:2.3

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
        libsqlite3-dev \
        sqlite3 \
        ruby-execjs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /derailed
COPY . /derailed/

RUN bundle install
RUN bundle exec rake db:schema:load

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

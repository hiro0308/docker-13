FROM ruby:2.5
RUN apt-get update && apt-get install -y \
        build-essential \
        libpq-dev \
        nodejs \
        postgresql-client \
        yarn
WORKDIR /docker-13
COPY Gemfile Gemfile.lock /docker-13/
RUN bundle install
FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /backend_app
WORKDIR /backend_app
COPY Gemfile /backend_app/Gemfile
COPY Gemfile.lock /backend_app/Gemfile.lock
RUN bundle install
COPY . /backend_app

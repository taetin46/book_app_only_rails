FROM ruby:2.6.2

RUN apt-get update -qq && apt-get install -y build-essential mysql-client nodejs

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile* /usr/src/app/
RUN bundle install
COPY . /usr/src/app/
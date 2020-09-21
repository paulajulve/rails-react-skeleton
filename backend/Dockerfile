FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y postgresql-client

RUN mkdir /backend
WORKDIR backend

COPY Gemfile /backend/Gemfile
COPY Gemfile.lock /backend/Gemfile.lock
RUN bundle install

COPY . /backend

EXPOSE 3001

CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3001"]

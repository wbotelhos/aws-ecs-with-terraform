FROM ruby:2.7.2-alpine

WORKDIR /var/www/app

COPY Gemfile* ./

RUN gem install bundler
RUN bundle install

COPY . /var/www/app

CMD ["bundle", "exec", "rackup", "-p", "8080", "-E", "production"]

FROM rails:4.2.1
VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/Gemfile
ADD Gemfile.lock /usr/src/app/Gemfile.lock
RUN bundle install
EXPOSE 3000

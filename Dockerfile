FROM rails:4.2.1
VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app
ADD Gemfile /usr/src/app/Gemfile
RUN bundle install
EXPOSE 3000

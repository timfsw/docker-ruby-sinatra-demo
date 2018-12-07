FROM ruby:2.5.3-alpine3.8

ENV PORT 8080

WORKDIR /usr/src/app
COPY . /usr/src/app/

COPY Gemfile* /

RUN bundle install

COPY . /usr/src/app/

EXPOSE 8080/tcp

RUN ls

CMD ["ruby", "app.rb"]
FROM ruby:3.3-alpine
RUN apk add --no-cache build-base nodejs npm
WORKDIR /site
COPY Gemfile Gemfile.lock* ./
RUN gem install bundler && bundle install
COPY . .
CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]

FROM ruby:2-alpine
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /family-tree
WORKDIR /family-tree
COPY Gemfile /family-tree/Gemfile
COPY Gemfile.lock /family-tree/Gemfile.lock
RUN bundle install
COPY . /family-tree

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

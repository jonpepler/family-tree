FROM ruby:2-alpine
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
  && apk update \
  && apk add --update-cache postgresql-client nodejs yarn \
    bash libffi-dev readline build-base postgresql-dev tzdata \
    libc-dev linux-headers libxml2-dev libxslt-dev readline-dev gcc libc-dev \
  && rm -rf /var/cache/apk/*

RUN mkdir /family-tree
WORKDIR /family-tree
COPY Gemfile /family-tree/Gemfile
COPY Gemfile.lock /family-tree/Gemfile.lock
RUN bundle install
COPY package.json /family-tree/package.json
COPY yarn.lock /family-tree/yarn.lock
RUN yarn install
COPY . /family-tree

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Default env vars
ENV HOST_URL myfamilytree.herokuapp.com

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]

FROM ruby:2.6.2

RUN apt-get update

# Install nodejs per instructions from https://github.com/nodesource/distributions/blob/master/README.md
# Using Debian, as root
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install nodejs

# Update npm to latest
RUN npm install -g npm@latest

# Install yarn
# Remove cmdtest first as it has a 'yarn' command as well (https://github.com/yarnpkg/yarn/issues/2821#issuecomment-306101401)
RUN apt remove cmdtest
RUN apt remove yarn
# Installation instructions for debian https://yarnpkg.com/lang/en/docs/install/#debian-stable
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update
RUN apt-get install yarn

# Install sqlite3
RUN apt-get install sqlite3

# Install rails, some tools and support for debugging in IDE
RUN gem install rails
RUN gem install bundler
RUN gem install rake
RUN gem install ruby-debug-ide

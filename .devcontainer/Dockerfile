FROM ruby:2.5

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update
RUN apt-get -y install nodejs yarn

RUN gem install -N rails
RUN gem install bundler
RUN gem install ruby-debug-ide

#RUN apt-get update -qq && apt-get install -y nodejs postgresql-client yarn
WORKDIR /app




# COPY Gemfile /app/Gemfile
# COPY Gemfile.lock /myapp/Gemfile.lock
#RUN bundle install
#COPY . /app

# Add a script to be executed every time the container starts.
#COPY entrypoint.sh /usr/bin/
#RUN chmod +x /usr/bin/entrypoint.sh
#ENTRYPOINT ["entrypoint.sh"]
#EXPOSE 3000

# Start the main process.
#CMD ["rails", "server", "-b", "0.0.0.0"]



# # Install sudo and curl
# RUN apt-get update
# RUN apt-get install sudo
# RUN apt -y install curl

# # Install yarn

# RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# RUN sudo apt-get update
# RUN sudo apt-get -y install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

# # Install ruby
# # run cd
# # run git clone https://github.com/rbenv/rbenv.git ~/.rbenv
# # run echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
# # run echo 'eval "$(rbenv init -)"' >> ~/.bashrc
# # run exec $SHELL

# # run git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# # run echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
# # run exec $SHELL

# # run rbenv install 2.2.10
# # run rbenv global 2.2.10
# # run ruby -v

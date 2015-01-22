git clone --depth 1 http://bitbucket.org/josemota/dockerapp app

cd app

source "/usr/local/share/chruby/chruby.sh"
chruby ruby

gem install bundler

bundle install --without=development,test
bundle exec rake db:migrate

if [[ $? != 0 ]]; then
  echo
  echo "== Failed to migrate. Running setup first."
  echo
  bundle exec rake db:setup && \
  bundle exec rake db:migrate
fi

export SECRET_KEY_BASE=$(rake secret)

bundle exec rails server -b 0.0.0.0

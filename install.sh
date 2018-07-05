sudo apt-get upgrade
sudo apt-get -y install build-essential mysql-server mysql-client libmysqlclient-dev libxml2-dev libxslt-dev git-core curl rubygems
\curl -sSL https://get.rvm.io | bash -s stable
rvm install 2.1
git clone https://github.com/iobridge/thingspeak.git
cd thingspeak
bundle install
cp config/database.yml.example config/database.yml
rake db:create
rake db:schema:load
rails server

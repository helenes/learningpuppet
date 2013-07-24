server "192.168.50.128", :app, :web, :db, :primary => true
set :deploy_to, "/etc/puppetlabs/puppet"
set :branch, "master"

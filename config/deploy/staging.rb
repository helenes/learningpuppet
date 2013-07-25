server "192.168.50.128", :web, :primary => true
set :deploy_to, "/usr/local/puppet"
set :branch, "master"

namespace :deploy do
  task :finishup, :roles => :web do
    run "chown -R pe-puppet:pe-puppet /usr/local/puppet/current/*"
    run "chown -R root:root /usr/local/puppet/current/auth.conf"
    run "chmod 644 /usr/local/puppet/current/auth.conf"
    run "rsync -a /usr/local/puppet/current/ /etc/puppetlabs/puppet/" 
  end
end

after "deploy", "deploy:finishup"
after "deploy", "deploy:cleanup"

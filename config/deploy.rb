require 'capistrano/ext/multistage'
default_run_options[:pty] = true

set :application, "learningpuppet"

set :scm, :git
set :repository, "git@github.com:helenes/learningpuppet.git"
set :scm_passphrase, ""

set :user, "root"
set :use_sudo, false

set :stages, ["staging", "production"]
set :default_stage, "staging"
set :deploy_via, :remote_cache
set :keep_releases, 3

task :finishup, :roles => :web do
  run "touch /tmp/test.txt"
end

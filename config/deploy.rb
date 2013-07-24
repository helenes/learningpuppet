require 'capistrano/ext/multistage'
default_run_options[:pty] = true

set :application, "learningpuppet"

set :scm, :git
set :repository, "git@github.com:helenes/learningpuppet.git"
set :ssh_options, { :forward_agent => true}
set :scm_passphrase, ""

set :user, "root"
set :use_sudo, false

set :stages, ["staging", "production"]
set :default_stage, "staging"
set :deploy_via, :remote_cache

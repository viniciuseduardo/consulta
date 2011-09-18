set :application, "consulta"
set :keep_releases, "3"

# git options
set :scm, "git"
set :repository, "git@github.com:viniciuseduardo/consulta.git"
set :branch, "master"
set :deploy_via, :remote_cache

# deploy credentials
set :user, "vinicius"
set :deploy_to, "/home/vinicius/#{application}"
set :use_sudo, false

# server definitions
set :servers, "139.82.13.4"

role :app, servers
role :web, servers
role :db,  servers, :primary => true

default_run_options[:pty] = true

before :"deploy:symlink", :"deploy:assets"

desc "Compile asets"
task :assets do
  run "cd #{release_path}; RAILS_ENV=#{rails_env} bundle exec rake assets:precompile"
end

# working with Passenger
namespace :deploy do
  task :bundle do
    run "cd #{release_path}; RAILS_ENV=#{rails_env} bundle install"
  end
  
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "don't need #{t} task with mod_rails"
    task t, :roles => :app do
      run "touch #{current_path}/tmp/restart.txt"
    end
  end
end


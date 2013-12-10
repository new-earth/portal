
set :application, "portal"
set :repo_url, "git@newearth1.new-earth-project.org:portal.git"

ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }
# set :branch, "master"

set :deploy_to, '/srv/apps/portal'
set :scm, :git

set :format, :pretty
set :log_level, :debug
set :pty, true

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system vendor/assets/components}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
set :keep_releases, 5


# set :use_sudo, false
# set :rails_env, "production"
# set :user, "deploy"
# set :deploy_via, :remote_cache
# set :git_shallow_clone, 1



namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :sh, shared_path.join('puma/puma_phased_restart.sh')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

  namespace :assets do
    namespace :bower do
      task :install do
      on roles :web do
        within release_path do
          with rails_env: fetch(:rails_env) do
            execute :bower, 'install'
          end
        end
      end

      end
    end

    before :precompile, 'bower:install'
  end
end
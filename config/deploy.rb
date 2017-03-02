lock '~> 3.10.0'

set :application, 'ruby-china'
set :repo_url, 'git@git.coding.net:shinplus/ftghub.git'
set :branch, 'ftghub'
set :deploy_to, "/data/www/#{ fetch(:application) }"

set :puma_role, :app
set :puma_conf, "/data/www/#{ fetch(:application) }/shared/config/puma-web.rb"

append :linked_files, *%w(config/secrets.yml config/database.yml config/config.yml
                          config/elasticsearch.yml config/redis.yml config/puma-web.rb)
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system', 'public/assets'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 10

after 'deploy:publishing', 'deploy:restart'

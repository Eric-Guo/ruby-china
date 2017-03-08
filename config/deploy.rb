lock '~> 3.10.0'

set :application, 'tensorflow-china'
set :repo_url, 'git@git.coding.net:shinplus/ftghub.git'
set :branch, 'tensorflow-china'
set :deploy_to, "/data/tfchina/#{ fetch(:application) }"

set :puma_role, :app
set :puma_conf, "/data/tfchina/#{ fetch(:application) }/shared/config/puma-web.rb"

append :linked_files, *%w(config/secrets.yml config/database.yml config/config.yml
                          config/elasticsearch.yml config/redis.yml config/puma-web.rb)
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 10

after 'deploy:publishing', 'deploy:restart'

default['ruby-ng']['ruby_version'] = "2.4"
default['nodejs']['version'] = "6.10.1"
default['nodejs']['npm']['version'] = "5.2.0"
default['nginx']['default_site_enabled'] = false

default[:danceflix][:git_repository] = "https://github.com/jfiume/Danceflix/"
default[:danceflix][:git_revision] = "master"
default[:danceflix][:path] = "/opt/danceflix"

default[:danceflix][:rails_env] = "production"
default[:danceflix][:log_to_stdout] = "true"

default[:danceflix][:environment] = {
  "SECRET_KEY_BASE": node[:danceflix][:secret_key_base],
  "DATABASE_URL": node[:danceflix][:database_url],
  "RAILS_ENV": node[:danceflix][:rails_env],
  "RAILS_LOG_TO_STDOUT": node[:danceflix][:log_to_stdout]
}

default[:danceflix][:start_cmd] = "unicorn -E production -c /opt/unicorn.rb"

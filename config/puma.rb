# Puma can serve each request in a thread from an internal thread pool.
# The `threads` method setting takes two numbers: a minimum and maximum.
# Any libraries that use thread pools should be configured to match
# the maximum value specified for Puma. Default is set to 5 threads for minimum
# and maximum; this matches the default thread size of Active Record.
#
threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
threads threads_count, threads_count

# Specifies the `port` that Puma will listen on to receive requests; default is 3000.
#
# port ENV.fetch("WEB_PORT") { 3000 }

bind 'tcp://0.0.0.0:9292?low_latency=false'

# Specifies the `environment` that Puma will run in.
#
environment ENV&.fetch("RAILS_ENV") { "development" }

worker_timeout 100

# Specifies the number of `workers` to boot in clustered mode.
# Workers are forked webserver processes. If using threads and workers together
# the concurrency of the application would be max `threads` * `workers`.
# Workers do not work on JRuby or Windows (both of which do not support
# processes).
#

(ENV&.fetch("RAILS_ENV"){nil} == "test") ? (workers 0) : (workers ENV.fetch("WEB_CONCURRENCY") { ENV["UNICORN_WORKERS"] || 5 })

# Use the `preload_app!` method when specifying a `workers` number.
# This directive tells Puma to first boot the application and load code
# before forking the application. This takes advantage of Copy On Write
# process behavior so workers use less memory.
#
preload_app!

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart

before_fork do |server, worker|
  # If Active Record is loaded: disconnect/close connections on the master process.
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end
end

redis_url = "redis://#{ENV["REDIS_HOST"] || "localhost"}:#{ENV["REDIS_PORT"] || "6379"}/#{ENV["REDIS_DB"] || "0"}"

# This is how we write the PID files for each worker; so we can have monit know the real PID of each worker.
# Additionally if Active Record is loaded re-establish the connection on each worker.
on_worker_boot do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end

  # Sidekiq.configure_client do |config|
  #   config.redis = { url: redis_url }
  # end
end

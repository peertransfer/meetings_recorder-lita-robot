require 'dotenv'
Dotenv.load

Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = ENV['robot.name']
  config.robot.mention_name = ENV['robot.mention_name']

  # The locale code for the language to use.
  # config.robot.locale = :en

  # The severity of messages to log. Options are:
  # :debug, :info, :warn, :error, :fatal
  # Messages at the selected level and above will be logged.
  config.robot.log_level = :debug

  # An array of user IDs that are considered administrators. These users
  # the ability to add and remove other users from authorization groups.
  # What is considered a user ID will change depending on which adapter you use.
  # config.robot.admins = ["1", "2"]

  # The adapter you want to connect with. Make sure you've added the
  # appropriate gem to the Gemfile.
  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['slack.rtm_token']

  ## Example: Set options for the chosen adapter.
  # config.adapter.username = "myname"
  # config.adapter.password = "secret"

  ## Example: Set options for the Redis connection.
  config.redis = { host: ENV['redis.host'] , port: ENV['redis.port'] }
  config.http.port = ENV['http.port'] || ENV['PORT']
end

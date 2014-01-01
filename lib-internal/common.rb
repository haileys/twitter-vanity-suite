gem "twitter", "~> 5.4"
require "twitter"
require "yaml"

config = YAML.load_file("#{ENV["HOME"]}/.twitter-api-creds")

$client = Twitter::REST::Client.new do |twitter|
  twitter.consumer_key        = config["consumer_key"]
  twitter.consumer_secret     = config["consumer_secret"]
  twitter.access_token        = config["access_token"]
  twitter.access_token_secret = config["access_token_secret"]
end

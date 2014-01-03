gem "twitter", "~> 5.4"
require "twitter"
require "yaml"

def client
  @client ||= Twitter::REST::Client.new do |client|
    config = YAML.load_file("#{Dir.home}/.twitter-api-creds")
    client.consumer_key        = config["consumer_key"]
    client.consumer_secret     = config["consumer_secret"]
    client.access_token        = config["access_token"]
    client.access_token_secret = config["access_token_secret"]
  end
end

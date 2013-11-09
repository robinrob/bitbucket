require 'oauth'

require 'yaml'

require_relative 'settings'


@callback_url = "https://bitbucket.org/api/1.0/oauth/callback"

config = YAML.load_file("config.yml")
consumer_key = config['consumer_key']
consumer_secret = config['consumer_secret']

puts consumer_key

#@consumer = OAuth::Consumer.new(ENV[CONSUMER_KEY], ENV[CONSUMER_KEY], :site => "https://bitbucket.org")
#
#@request_token = @consumer.get_request_token(:oauth_callback => @callback_url)
#
#puts @request_token
##session[:request_token] = @request_token
##redirect_to @request_token.authorize_url(:oauth_callback => @callback_url)
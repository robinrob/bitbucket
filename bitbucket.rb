require 'oauth'
require 'yaml'


config = YAML.load_file("config.yml")
consumer_key = config['consumer_key']
consumer_secret = config['consumer_secret']
site = config['site']
callback = config['callback']


@callback_url = callback

@consumer = OAuth::Consumer.new(consumer_key, consumer_secret, :site => site)
puts @consumer.request_token_url

@request_token = @consumer.get_request_token(:oauth_callback => @callback_url)
#puts @request_token.authorize_url(:oauth_callback => @callback_url)

session[:request_token] = @request_token

redirect_to @request_token.authorize_url(:oauth_callback => @callback_url)
require 'oauth'
require 'yaml'


config = YAML.load_file("config.yml")
consumer_key = config['consumer_key']
consumer_secret = config['consumer_secret']
site = config['site']
callback = config['callback']


@consumer = OAuth::Consumer.new(consumer_key, consumer_secret, :site => site)


@request_token = @consumer.get_request_token(:oauth_callback => callback)

#puts @request_token

##session[:request_token] = @request_token
##redirect_to @request_token.authorize_url(:oauth_callback => @callback_url)
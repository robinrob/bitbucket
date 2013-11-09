require 'oauth'
require_relative 'settings'


@callback_url = "https://bitbucket.org/api/1.0/oauth/callback"
@consumer = OAuth::Consumer.new(ENV[CONSUMER_KEY], ENV[CONSUMER_KEY], :site => "https://agree2")
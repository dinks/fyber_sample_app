require 'fyber_api_wrapper'

FyberApiWrapper.configure do |config|
  config.format = :json
  config.appid = 157
  config.offer_types = [ 112 ]
  config.api_key = ENV['FYBER_API_KEY']
end

Airbrake.configure do |config|
  config.api_key = 'c635ffdb9bf299eb4fbd95eecdc65432'
  config.host    = 'www.wooul.com'
  config.port    = 3001
  config.secure  = config.port == 443
end

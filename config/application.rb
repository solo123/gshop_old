require File.expand_path('../boot', __FILE__)

require 'rails/all'
Bundler.require(:default, Rails.env)

module Gshop
  class Application < Rails::Application
    config.assets.precompile += ['application.js', 'application.css', 'print.css', 'print_view.css']
		config.time_zone = 'Beijing'
  end
end

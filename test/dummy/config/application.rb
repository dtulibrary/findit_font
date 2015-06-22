require File.expand_path('../boot', __FILE__)

require "sprockets/railtie"

Bundler.require(:default, :development)
#require "findit_font"

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.assets.enabled = true
    config.assets.version = '1.0'

    # replacement for environments/*.rb
    config.active_support.deprecation = :stderr
    config.active_support.test_order  = :random
    config.eager_load = false
  end
end


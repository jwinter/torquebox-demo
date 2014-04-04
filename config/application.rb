require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ridicuclock
  class Application < Rails::Application
    config.cache_store = :torquebox_store, {:mode => :distributed}
  end
end

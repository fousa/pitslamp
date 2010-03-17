require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Auto-require default libraries and those for the current Rails environment.
Bundler.require :default, Rails.env

module Pitslamp
  class Application < Rails::Application
    config.filter_parameters << :password

    config.time_zone = 'Brussels'

    config.cache_store = :file_store, "#{Rails.root}/tmp/cache/"

    config.action_controller.session = {
      :key    => '_currentversion_session',
      :secret => 'e940f7192b963fc8684cd12aadcd6fd846cf698bf0c1252a8b727839dc2e254c051fe82e171b600509e4d601ea810be6b8c2cdbbad21e8685b1c44ac8a353ec2'
    }

    config.generators do |g|
      g.orm             :active_record
      g.template_engine :haml
    end
  end
end
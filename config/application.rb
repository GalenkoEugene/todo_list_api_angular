require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module TodoListApiAngular
  class Application < Rails::Application
    config.load_defaults 5.1

    config.generators do |g|
      g.test_framework        :rspec
      g.fixture_replacement   :factory_girl, dir: 'spec/factories'
      g.template_engine       false
      g.stylesheets           false
      g.javascripts           false
      g.helper                false
      g.assets                false
    end
  end
end

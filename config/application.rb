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

    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components', 'bootstrap-sass-official', 'assets', 'fonts')
    config.assets.precompile << /.*.(?:eot|svg|ttf|woff)$/
  end
end

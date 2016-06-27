module RailsVoter
  class Engine < ::Rails::Engine
    require 'rails/all'
    require 'sprockets/rails'
    require "bootstrap-sass"
    require "jquery-rails"

    isolate_namespace RailsVoter

    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.fixture_replacement :factory_girl, dir: "spec/factories"
      g.assets true
      g.helper false
      g.template_engine :haml
    end
  end
end

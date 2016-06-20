module RailsVoter
  class Engine < ::Rails::Engine
    require "jquery-rails"
    require "rails-assets-bootstrap"
    require "rails-assets-font-awsome"
    require "rails-assets-admin-lte"
    require "rails-assets-slimScroll"

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

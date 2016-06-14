require_dependency "decent_exposure"
require_dependency "haml-rails"
require_dependency "draper"
# require_dependency "rails-assets-admin-lte"
require_dependency "adminlte-rails/vendor/assets/javascripts/bootstrap.min.js"
require_dependency "adminlte-rails"

module RailsVoter
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
  end
end

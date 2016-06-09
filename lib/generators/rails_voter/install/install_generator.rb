module RailsVoter
  class InstallGenerator < Rails::Generators::Base
    def add_routes
      route "mount RailsVoter::Engine, at: \"/rails_voter\""
    end

    def add_migrations
      rake("rails_voter:install:migrations")
      rake("db:migrate")
    end
  end
end

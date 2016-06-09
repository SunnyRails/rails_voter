module RailsVoter
  class UpdateGenerator < Rails::Generators::Base
    def add_migrations
      rake("rails_voter:install:migrations")
      rake("db:migrate")
    end
  end
end

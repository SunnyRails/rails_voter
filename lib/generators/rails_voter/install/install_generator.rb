module RailsVoter
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path("../templates", __FILE__)

    def add_routes
      route "mount RailsVoter::Engine, at: \"/rails_voter\""
    end

    def add_migrations
      rake("rails_voter:install:migrations")
      rake("db:migrate")
    end

    def add_seeds
      copy_file "seeds.rb", "db/seeds.rb"
      rake("db:seed")
    end
  end
end

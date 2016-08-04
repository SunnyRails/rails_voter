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

    def add_sample_data
      copy_file "sample_data.rb", "lib/tasks/rails_voter.rake"
      rake("rails_voter:add_sample_data")
    end

    def add_helpers
      copy_file "helpers.rb", "config/initializers/rails_voter_helpers.rb"
    end
  end
end

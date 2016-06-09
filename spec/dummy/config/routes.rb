Rails.application.routes.draw do
  mount RailsVoter::Engine, at: "/rails_voter"
end

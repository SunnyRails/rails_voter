Rails.application.routes.draw do
  resources :sample_form, only: [:index, :create]

  mount RailsVoter::Engine, at: "/rails_voter"

  root to: "sample_form#index"
end

RailsVoter::Engine.routes.draw do
  resources :ballot_forms do
    get "vote", on: :member
  end

  resources :voting_results, only: [:create]

  root to: 'ballot_forms#index'
end

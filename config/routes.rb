RailsVoter::Engine.routes.draw do
  resources :ballot_forms

  root to: 'ballot_forms#index'
end

RailsVoter::Engine.routes.draw do
  resources :elections do
    get "vote", on: :member
    get "show_result", on: :member
  end

  resources :voting_results, only: [:create]

  root to: "elections#index"
end

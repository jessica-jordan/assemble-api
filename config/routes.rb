Rails.application.routes.draw do
  get '/auth/:provider/callback' => 'sessions#create'

  resources :alerts
  resources :users do
    resources :teams
  end

  resources :teams do
    resources :users
    resources :alerts
  end
end

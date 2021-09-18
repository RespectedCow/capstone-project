Rails.application.routes.draw do
  devise_for :users
  resources :gigs

  root 'pages#index'
  get '/landing' => 'pages#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

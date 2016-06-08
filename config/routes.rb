Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments
  end
  root "pages#about"

  get '/about', to: 'pages#about'
  get '/science', to: 'pages#charts'
  get '/charts', to: 'application#charts'
  get '/music', to: 'pages#music'
end

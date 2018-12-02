Rails.application.routes.draw do
  devise_for :gammers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  root 'pages#home'
  get '/about', to: 'pages#about'
end

Rails.application.routes.draw do
  resources :food_items
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'

end

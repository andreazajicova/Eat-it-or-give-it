Rails.application.routes.draw do
  resources :food_items
  devise_for :users
  root 'pages#home'
  get 'about' => 'pages#about'

get 'categories/vegetables' => 'pages#vegetables'
get 'categories/food_categories' => 'pages#food_categories'
get 'categories/canned_food' => 'pages#canned_food'
get 'categories/bottled_drinks' => 'pages#bottled_drinks'
end

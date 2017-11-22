Rails.application.routes.draw do
  resources :attentions
  resources :city_has_ads
  resources :cities
  resources :ad_has_categories
  resources :categories
  resources :details
  resources :ads
  resources :accounts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

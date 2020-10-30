Rails.application.routes.draw do
  devise_for :users
  # get 'businesses/index'
  # get 'businesses/show'
  # get 'businesses/create'
  # get 'businesses/update'
  # get 'businesses/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :bussinesses
end

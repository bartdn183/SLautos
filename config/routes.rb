Rails.application.routes.draw do

  devise_for :users
  #resources :car_pictures
  resources :cars
  resources :brands, except: [:show]
  root 'welcome#index'
  
  post 'contact_form' => 'welcome#contact_form'

  get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

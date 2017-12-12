Rails.application.routes.draw do

  root 'welcome#index'
  
  post 'contact_form' => 'welcome#contact_form'

  get '*path' => redirect('/')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

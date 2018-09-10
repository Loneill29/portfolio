Rails.application.routes.draw do

  get 'about' => 'homepage#about'

  resources :projects
  
  get 'contact_me', to: 'messages#new', as: 'new_message'
  post 'contact_me', to: 'messages#create', as: 'create_message'

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

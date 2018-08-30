Rails.application.routes.draw do

  get 'work' => 'work#index'

  get 'about' => 'homepage#about'

  get 'contact_me', to: 'messages#new', as: 'new_message'
  post 'contact_me', to: 'messages#create', as: 'create_message'

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

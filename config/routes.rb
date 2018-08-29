Rails.application.routes.draw do
  get 'contact' => 'contact#show'

  get 'work' => 'work#index'

  get 'about' => 'homepage#about'

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :images
  resources :users
  root 'main#index'
  get 'main/index'

  match 'main/help', to:'main#help', :via=>'get'

  get 'main/contacts'

  get 'main/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

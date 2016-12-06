Rails.application.routes.draw do
  match 'work/index', to:'work#index', :via=>'get'
  match 'work/choose_theme', to:'work#choose_theme', :via=>'get'
  match 'work/display_theme', to:'work#display_theme', :via=>'post'

  resources :values
  resources :themes
  resources :microposts
  resources :images
  resources :users
  root 'work#index'

  get 'main/index'

  match 'main/help', to:'main#help', :via=>'get'

  get 'main/contacts'

  get 'main/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

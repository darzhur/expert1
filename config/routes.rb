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

  namespace :api, defaults: { format: :json } do
    # We are going to list our resources here
    #   resources :users

    match 'next_image',       to: 'api#next_image',   via: 'get'
    match 'prev_image',       to: 'api#prev_image',   via: 'get'
    match 'save_value',       to: 'api#save_value',   via: :get

  end

  match 'index',    to: 'main#index',           via: 'get'
  match 'about',    to: 'main#about',           via: 'get'
  match 'help',     to: 'main#help',            via: 'get'
  match 'contacts', to: 'main#contacts',        via: 'get'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

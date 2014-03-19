ChurchDirectory::Application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :families
      resources :people
      resources :addresses
      resources :phones
      resources :emails
    end
  end
  root 'welcome#index'
  get '/families/map' => 'families#map'
  resources :families
end

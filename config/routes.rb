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
  get '/families/search/:query' => 'families#search'
  get '/families/map' => 'families#map'
  get '/families/heatmap' => 'families#heatmap'
  resources :families
end

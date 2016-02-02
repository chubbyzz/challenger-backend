Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'challengers', to: 'challengers#index'
      get 'challengers/:slug', to: 'challengers#show'
      post 'challengers/create', to: 'challengers#create'
    end
  end
end

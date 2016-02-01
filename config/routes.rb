Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'challengers', to: 'challengers#index'
    end
  end
end

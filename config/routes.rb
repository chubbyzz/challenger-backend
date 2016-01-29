Rails.application.routes.draw do
  namespace :api, default: 'json'do
    namespace :v1 do

      get 'challengers', to: 'challenger#index'
    end
  end
end

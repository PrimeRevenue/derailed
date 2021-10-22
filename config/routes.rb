Rails.application.routes.draw do
  resources :chuck_norris_facts

  get '/chuck_dashboards', to: 'chuck_dashboards#index'

  root  'chuck_dashboards#index'
end

Rails.application.routes.draw do
  resources :chuck_norris_facts
  root  'chuck_norris_facts#index'
end

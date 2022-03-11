Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #
  resources :chuck_norris_facts, :defaults => { :format => 'json' }

  get "/chuck_dashboards", to: "chuck_dashboards#index"

  root "chuck_dashboards#index"

  namespace "api" do
    get "auto_savings", to: "auto_savings#index"
    post "auto_savings", to: "auto_savings#create"
  end
end

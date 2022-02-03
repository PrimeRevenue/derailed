Rails.application.routes.draw do
  resources :chuck_norris_facts

  get "/chuck_dashboards", to: "chuck_dashboards#index"

  root "chuck_dashboards#index"

  namespace "api" do
    get "auto_savings", to: "auto_savings#index"
    post "auto_savings", to: "auto_savings#create"
  end
end

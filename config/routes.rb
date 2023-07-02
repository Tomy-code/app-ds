Rails.application.routes.draw do
    root to: "pages#home"
    get "users", to: "users#index"
    get "users/new", to: "users#new"
    get "users/:id", to: "users#show", as: :user
    post "users", to: "users#create"
    delete "users/:id", to: "users#destroy"
    get "/send_newsletter", to: "newsletters#send_daily"
  end

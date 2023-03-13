Rails.application.routes.draw do
    root to: "pages#home"
    get "users", to: "users#index"
    get "users/new", to: "users#new"
    post "users", to: "users#create"
  end

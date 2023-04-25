Rails.application.routes.draw do
  resources :pets

  post "/sessions" => "sessions#create"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/login" => "sessions#new"
  get "logout" => "sessions#destroy"
end

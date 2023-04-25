Rails.application.routes.draw do
  resources :pets

  post "/sessions" => "sessions#create"
  
end

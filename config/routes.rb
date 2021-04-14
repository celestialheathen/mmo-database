Rails.application.routes.draw do
  resources :items
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/players", to: "players#index"
  post "/players", to: "players#create"
  get "/players/:pid", to: "players#show"
  patch "/players/:pid", to: "players#update"

  get "/items", to: "items#index"
  post "/items", to: "items#create"
  delete "/items/", to: "items#destroy"
end

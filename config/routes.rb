Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/players" => "players#index"
  get "/players/new" => "players#new"
  post "/players" => "players#create"
  get "/players/:id/edit" => "players#edit"
  get "/players/:id" => "players#show"
  patch "/players/:id" => "players#update"
end


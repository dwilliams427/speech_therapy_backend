Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/cards" => "cards#index"
  get "/cards/:id" => "cards#show"
  post "/cards" => "cards#create"
  patch "/cards/:id" => "cards#update"
  delete "/cards/:id" => "cards#destroy"

  get "/tags" => "tags#index"
  get "/tags:id" => "tags#show"
  post "/tags" => "tags#create"
  patch "/tags/:id" => "tags#update"
  delete "/tags/:id" => "tags#destroy"

  
  get "/card_tags", controller: "card_tags", action: "index"
  get "/card_tags/:id", controller: "card_tags", action: "show"
  post "/card_tags", controller: "card_tags", action: "create"
  get "/card_tags/:id", controller: "card_tags", action: "destroy"
end

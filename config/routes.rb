Rails.application.routes.draw do

  get '/plants/unassigned', to: 'plants#unassigned_plants'
  resources :spaces, only: [:index, :create, :update, :destroy]
  resources :plants, only: [:index, :create, :update, :destroy]
  
  post "/signup", to: "users#create"
  post "/login", to: "auth#login"
  get "/auto-login", to: "auth#auto_login"

end

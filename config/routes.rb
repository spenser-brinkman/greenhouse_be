Rails.application.routes.draw do
  get '/plants/unassigned', to: 'plants#unassigned_plants'
  resources :spaces, only: [:index, :show, :create, :update, :destroy]
  resources :plants, only: [:index, :show, :create, :update, :destroy]

end

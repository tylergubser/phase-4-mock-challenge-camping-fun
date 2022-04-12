Rails.application.routes.draw do
  resources :activities, only: [:index, :destroy]
  resources :campers, only: [:index, :show]
end

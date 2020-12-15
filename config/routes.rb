Rails.application.routes.draw do
  root "posts#index"
  devise_for :users  
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  
end

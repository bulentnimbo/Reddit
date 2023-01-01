Rails.application.routes.draw do
  resources :comments
  devise_for :users
  resources :links do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "links#index"
end

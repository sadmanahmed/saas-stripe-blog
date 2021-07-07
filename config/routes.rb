Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get "pricing" => "static_pages#pricing"
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

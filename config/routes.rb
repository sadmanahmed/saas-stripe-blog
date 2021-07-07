Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  get "pricing" => "static_pages#pricing"
  resources :posts
  post 'checkout/create' => 'checkout#create', as: "checkout_create"
  post "billing_portal/create" => 'billing_portal#create', as: "billing_portal_create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

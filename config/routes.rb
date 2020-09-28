Rails.application.routes.draw do
  devise_for :users
  resources :books
  root to: 'books#index'
  get 'tags/:tag', to: 'books#index', as: :tag
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

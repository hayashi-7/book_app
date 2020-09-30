Rails.application.routes.draw do
  devise_for :users 
  resources :books do
    member do
    get 'category'
    end
  end
  root to: 'books#index'
  get 'tags/:tag', to: 'books#index', as: :tag
end

Rails.application.routes.draw do
  devise_for :users 
  resources :books do
    resource :likes, only: %i[create destroy]
    member do
    get 'category'
    end
    collection do
      get 'search'
    end
  end
  root to: 'books#index'
  get 'tags/:tag', to: 'books#index', as: :tag
  resources :users, only: :show
end

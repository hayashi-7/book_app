Rails.application.routes.draw do
  get 'relationships/create'
  get 'relationships/destroy'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
  end
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
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :relationships, only: %i[create destroy]
end

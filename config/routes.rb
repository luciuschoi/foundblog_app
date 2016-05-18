Rails.application.routes.draw do

  root 'posts#index'

  get 'welcome/readme', as: :readme

  devise_for :users

  resources :categories do
    resources :posts
  end

  resources :posts do
    get 'archive', on: :collection
    get 'list_my', on: :collection
    resources :comments
  end

end

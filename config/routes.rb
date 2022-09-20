Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  get "home/about"=>"homes#about"
  resources :books do
    resource :favorites, only: [:create, :destroy]
  end
  resources :users
  # resources :books, only: [:new, :index, :show]
  # resources :users, only: [:show, :edit, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

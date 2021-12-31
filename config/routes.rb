Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'
  resources :users, only: [:show, :index, :edit, :update] do
    get 'users/:user_id/bookmarks' => 'bookmarks#index', as: 'bookmarks'
  end
  resources :posts do
    resources :post_comments, only: [:create, :destroy]
    resources :bookmarks, only: [:create, :destroy]
  end
  resources :groups, except: [:destroy] do
    get 'join' => 'groups#join'
    delete 'leave' => 'groups#leave'
  end
  post 'follow/:id' => 'relationships#create', as: 'follow'
  post 'unfollow/:id' => 'relationships#destroy', as: 'unfollow'
  get 'users/:user_id/followings' => 'relationships#followings', as: 'followings'
  get 'users/:user_id/followers' => 'relationships#followers', as: 'followers'
end

Rails.application.routes.draw do
  devise_for :users
  root "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create, :destroy] do
    #messageをみるにはroomのidが必要になるのでネストを利用する
    resources :messages, only: [:index, :create]
  end
end

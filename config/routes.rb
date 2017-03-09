Rails.application.routes.draw do
  get 'users/new'

  #static_pageのhomeアクションのビュー（static_page）を呼び出す
  root to: 'static_pages#home'
  
  get 'signup',  to: 'users#new'
  resources :users
end

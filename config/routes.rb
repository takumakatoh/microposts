Rails.application.routes.draw do
  #static_pageのhomeアクションのビュー（static_page）を呼び出す
  root to: 'static_pages#home'
end

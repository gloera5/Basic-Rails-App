Rails.application.routes.draw do
  devise_for :users
  resources :posts, :welcome, :topics
  resources :posts do 
    resources :comments, only: [:create]
  end
  resources :topics do
    resources :posts, except: [:index]  
  end
  


  
   get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

Rails.application.routes.draw do
  devise_for :users
  resources :posts, :welcome, :topics
   resources :topics do
     resources :posts, except: [:index]
   end
   resources :summary do
     resources :posts, except: [:index]
   end
  


  
   get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

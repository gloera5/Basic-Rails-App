Rails.application.routes.draw do
  get 'comments/index'

  get 'comments/create'

  get 'comments/show'

  get 'comments/destroy'

  devise_for :users
  resources :posts, :welcome, :topics, :comments
   resources :topics do
     resources :posts, except: [:index]
   end
   resources :coments do
     resources :posts, only: [:create]
   end


  
   get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

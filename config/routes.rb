Rails.application.routes.draw do

  devise_for :users
  resources :welcome, :topics
   resources :topics do
     resources :posts, only: [:index, :new, :create]
   end

   resources :posts, except: [:index] do
     resources :comments, only: [:create]
  end

  get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

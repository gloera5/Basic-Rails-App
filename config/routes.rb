Rails.application.routes.draw do
  
  devise_for :users
  resources :welcome, :topics
   resources :topics do
     resources :posts, except: [:index], controller: 'topics/post'
   end

   resources :posts, only: [:index] do
     resources :comments, only: [:create]
     resources :favorites, only: [:create, :destroy]
   post '/up-vote' => 'votes#up_vote', as: :up_vote
   post '/down-vote' => 'votes#down_vote', as: :down_vote
  end
   
  resources :users, only: [:edit, :update, :show, :index] do
    collection do
    patch 'update_password'
  end
end
  
  get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

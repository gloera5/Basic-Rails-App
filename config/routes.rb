Rails.application.routes.draw do
  
  devise_for :users
  resources :welcome, :topics
   resources :topics do
     resources :posts, only: [:index, :new, :create]
   end

   resources :posts, except: [:index] do
     resources :comments, only: [:create]
     resources :favorites, only: [:create, :destroy]
   post '/up-vote' => 'votes#up_vote', as: :up_vote
   post '/down-vote' => 'votes#down_vote', as: :down_vote
  end
   
  resource :user, only: [:edit, :update, :show] do
    collection do
    patch 'update_password'
  end
end
  
  get 'about' => 'welcome#about'


   root to: 'welcome#index'
  
end

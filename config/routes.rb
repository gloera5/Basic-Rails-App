Rails.application.routes.draw do
<<<<<<< HEAD
  resources :posts
  
  get 'about' => 'welcome#about'

  get 'welcome/contact'
=======
  resources :posts, :advertisement
  
   get 'about' => 'welcome#about'
>>>>>>> Assignment-27-CRUD

   root to: 'welcome#index'
end

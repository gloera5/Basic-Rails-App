Rails.application.routes.draw do

  resources :posts, :advertisements, :welcome, :questions
  
  

  get 'welcome/contact'


  
   get 'about' => 'welcome#about'


  root to: 'welcome#index'
  
end

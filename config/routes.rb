Rails.application.routes.draw do

  resources :posts, :advertisement, :welcome, :question
  
  

  get 'welcome/contact'


  
   get 'about' => 'welcome#about'


  root to: 'welcome#index'
  
end

Rails.application.routes.draw do
  get 'blog/apiReport'

  resources :blog do
    resources :comment
  end
  
  namespace :api do 
    resources :blog
  end  

  root 'blog#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

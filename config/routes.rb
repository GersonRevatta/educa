Rails.application.routes.draw do
  resources :blog do
    resources :comment
  end
  
  root 'blog#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

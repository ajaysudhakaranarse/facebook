Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #root 'users#new'
    resources :users do
      resources :posts
      resources :addresses
    end
end

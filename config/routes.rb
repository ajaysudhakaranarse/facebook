Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
    root 'users#index'

    resources :user do
      resources :address
    end
    resources :users, only: [:index, :new, :create]

  end
end

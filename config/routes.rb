Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  
  root to: "home#index"

  resources :users, only: [:index, :show]
  
  
end

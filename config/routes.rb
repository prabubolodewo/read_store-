Rails.application.routes.draw do
  devise_for :users, controllers: { omniaut_callbacks: 'omniauth_callbacks' }
  
  namespace :api, default: { format: :json } do
    namespace :auth do 
      resources :users
      resources :sessions, only: %i[create destroy]

      resources :reset_passwords, only: [:index, :create]
    end     

    resources :checkouts, only: [:create]

    namespace :v1 do 
      resources :books 
      resources :stores

      resources :cart, only: [:show] do
        put 'add/:book_id', to: 'carts#add', as: :add_to 
        put 'remove/book_id', to: 'carts#remove', as: :remove_from
      end 

      resources :reviews, only: [:show, :create]
    end 
  end
end

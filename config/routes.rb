Rails.application.routes.draw do
  root 'home#index'
  resources :iletisims
  resources :bilgilers
  resources :projelers
 
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
 
  resources :yazilars do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  

  resources :photos
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'registers/bride'
  get 'registers/bridal'
  get 'registers/contacts'
  resources :registers
  root 'registers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

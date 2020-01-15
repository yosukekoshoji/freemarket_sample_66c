Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'addresses', to: 'users/registrations#new_address'
    post 'phone_numbers', to: 'users/registrations#create_tel'
    post 'addresses', to: 'users/registrations#create_address'
    post 'cards', to: 'users/registrations#create_card'


  end
  root "toppage#index"
end


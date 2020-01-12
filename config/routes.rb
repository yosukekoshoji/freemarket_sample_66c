Rails.application.routes.draw do
  root "toppage#index"
  resources :items,only:[:index]
end

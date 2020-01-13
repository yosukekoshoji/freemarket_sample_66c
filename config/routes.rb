Rails.application.routes.draw do

  root "toppage#index"
  resources :mypages,only:[:index]
  resources :items,only:[:index,:show]
end

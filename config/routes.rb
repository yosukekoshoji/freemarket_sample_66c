Rails.application.routes.draw do

  root "toppage#index"
  resources :signup do
    collection do
      get 'information'
      get 'authentication'
      get 'address'
      get 'payment'
      get 'done'
    end
  end
  resources :mypages,only:[:index,:edit]
  resources :items,only:[:index,:show]
end

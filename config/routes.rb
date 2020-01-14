Rails.application.routes.draw do

  root "toppage#index"
  resources :mypages,only:[:index] do
    collection do
      get 'identification'
    end
  end
  resources :items,only:[:index,:show]
end

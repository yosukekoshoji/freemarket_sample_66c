Rails.application.routes.draw do
  root "toppage#index"
  resources :sell, only: [:index]

end

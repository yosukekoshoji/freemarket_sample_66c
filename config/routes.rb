Rails.application.routes.draw do

  root "toppage#index"
  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      get 'step3'
      get  'step4'
      get  'step5'
      get 'complete_signup'  #登録完了後
    end
  end
  resources :mypages,only:[:index]
  resources :items,only:[:index,:show]
end

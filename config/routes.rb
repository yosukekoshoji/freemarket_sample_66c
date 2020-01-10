Rails.application.routes.draw do
  root "toppage#index"
  resources :signup do
    collection do
      get 'step1'
      post 'step2'
      post 'step3'
      post  'step4'
      post  'step5'
      get 'complete_signup'  #登録完了後
    end
  end
end

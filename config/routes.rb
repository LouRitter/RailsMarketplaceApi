Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  #API def
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :tokens, only: [:create]

      resources :users, only: %i[show create update destroy]

      resources :products, only: %i[show index]
    end
  end
end

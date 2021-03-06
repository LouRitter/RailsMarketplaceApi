Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'tokens/create'
    end
  end
  #API def
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :orders, only: %i[index show create]

      resources :tokens, only: [:create]

      resources :users, only: %i[show index create update destroy]

      resources :products, only: %i[show index create update destroy]

    end
  end
end

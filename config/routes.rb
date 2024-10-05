Rails.application.routes.draw do
  root 'pages#home'

  # get 'pages/home'
  # get 'homepage/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :creators do
    resources :books, only: %i[new create]
  end

  resources :books, except: %i[new create]

  # root "creators#index"

  # root 'home#index'
  # get '/*path' => 'home#index'

end

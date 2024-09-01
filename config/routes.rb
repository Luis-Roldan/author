Rails.application.routes.draw do
  get 'book/new'
  get 'book/create'
  get 'creator/index'
  get 'creator/show'
  get 'creator/new'
  get 'creator/create'
  get 'creator/edit'
  get 'creator/update'
  get 'creator/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :creators do
    resources :books, only: %i[new create]
  end
end

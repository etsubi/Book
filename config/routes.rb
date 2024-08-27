Rails.application.routes.draw do
  get 'lending_histories/index'
  get 'lending_histories/show'
  get 'lending_histories/create'
  get 'lending_histories/update'
  get 'lending_histories/destroy'
  get 'students/index'
  get 'students/show'
  get 'students/create'
  get 'students/update'
  get 'students/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

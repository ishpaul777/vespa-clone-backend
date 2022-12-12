Rails.application.routes.draw do
  devise_for :users, path: '',
  path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'signup' },
  controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/current_user', to: 'users#logged_in_user'

  resources :products, only: [ :create, :index, :destroy, :show ]

end

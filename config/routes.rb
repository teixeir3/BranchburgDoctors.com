BranchburgDoctors::Application.routes.draw do
  resources :pictures

  resources :downloads

  resource :session, only: [:create, :destroy, :new]
  resources :users do
    get :activate, on: :collection
    get :password_reset, on: :collection
    put :password_update, on: :collection
    put :sort, on: :collection
    resources :pictures
  end
  
  resources :downloads, only: [:index]
  resources :observances
  
  resources :pages
  # get "/pages/*id" => 'pages#resources', as: :page, format: false
  

  root to: 'observances#home', id: 'home'
  get 'home', to: redirect('/')
  # root to: "observances#index"
  # root to: "pages#home", as: "home"
  get '/*id', to:'high_voltage/pages#show'
  # get '/*id', to: 'pages#resources', as: :static, format: false
end

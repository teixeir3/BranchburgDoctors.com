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
  
  get "/pages/*id" => 'pages#show', as: :page, format: false

  root to: 'observances#home', id: 'home'
  
  # root to: "observances#index"
  # root to: "pages#home", as: "home"

end

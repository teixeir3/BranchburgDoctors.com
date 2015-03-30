BranchburgDoctors::Application.routes.draw do
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
  # root to: "observances#index"
  # root to: "pages#home", as: "home"

end

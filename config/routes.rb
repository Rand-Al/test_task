Rails.application.routes.draw do
  devise_for :doctors
  devise_for :users
  root to: "static_pages#home"
  resources :appointments
  get '/about', to: 'static_pages#about'
  resource :doctors, only: :index do 
    member do 
      get :profile
    end
  end
  resource :users, only: %i[edit update] do 
    member do
      get :profile
    end 
  end
end

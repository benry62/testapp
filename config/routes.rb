Rails.application.routes.draw do



  devise_for :users
  root to: "detentions#index"
  resources :roles
  resources :forms
  resources :departments
  resources :users
  resources :students
  resources :detentions
  resources :years



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

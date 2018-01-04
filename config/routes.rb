Rails.application.routes.draw do

  root to: "detentions#index"


  #devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :roles
  resources :forms
  resources :departments
  resources :users
  resources :students
  resources :detentions



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

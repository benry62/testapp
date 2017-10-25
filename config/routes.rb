Rails.application.routes.draw do
  #get 'departments/index'

  #get 'departments/edit'

  #get 'departments/new'

  #get 'departments/show'

  #get 'schools/index'
  resources :schools
  resources :departments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

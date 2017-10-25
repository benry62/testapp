Rails.application.routes.draw do

  resources :schools do
    resources :departments do
    end
  end


  resources :teachers

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do



  devise_for :users
  root to: "home#index"
  resources :roles
  resources :forms
  resources :detention_types

  resources :schools do
    resources :departments do
    end
    resources :users do
    end
    resources :students do
    end
    resources :detentions do
    end
    resources :years do
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

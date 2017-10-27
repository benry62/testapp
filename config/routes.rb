Rails.application.routes.draw do






  resources :roles
  resources :detention_types

  resources :schools do
    resources :departments do
    end
    resources :teachers do
    end
    resources :students do
    end
    resources :detentions do
    end
  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

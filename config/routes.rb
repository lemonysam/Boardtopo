Rails.application.routes.draw do
  resources :boards
  resources :boards do
    resources :holds
    resources :problems

  end
  resources :holds


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

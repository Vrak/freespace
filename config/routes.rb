Rails.application.routes.draw do
  resources :members
  resources :first_names
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    root 'members#index'
end

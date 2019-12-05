Rails.application.routes.draw do
  
  resources :locations do 
    resources :comments
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"

  devise_for :users,
              path: '',
              path_names: {
                  sign_in: 'login',
                  sign_out: 'logout',
                  registration: 'signup'
              },
              controllers: {
                sessions: 'sessions',
                registrations: 'registrations'
              }

  resources :users do 
    resources :locations 
  end 
end


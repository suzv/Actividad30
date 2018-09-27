Rails.application.routes.draw do
  get 'histories/user_history', to: 'histories#user_history'

  devise_for :users, controllers: {
      sessions: 'users/registrations'
    }
  resources :histories
  get 'users/edit', to: 'devise/registrations#edit', as: 'edit_user_registration_path'


  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

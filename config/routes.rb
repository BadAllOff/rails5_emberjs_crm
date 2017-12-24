Rails.application.routes.draw do
  scope '/api' do
    resources :notes
    resources :offers
    resources :tasks
    resources :projects
    resources :contacts
    resources :companies

    resources :authorizations, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'root#index'
end

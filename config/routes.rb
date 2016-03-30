Rails.application.routes.draw do
  root 'registrations#new'

  resources :registrations, only: [:new, :create]

  resources :event_registrations, only: [:index]

end

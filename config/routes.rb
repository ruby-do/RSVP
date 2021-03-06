Rails.application.routes.draw do
  root 'event_registrations#index'

  resources :events, only: [:index, :show] do
    resources :registrations, only: [:create]
  end

  resources :event_registrations, only: [:index]

end

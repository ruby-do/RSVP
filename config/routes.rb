Rails.application.routes.draw do
  root 'registrations#new'

  resource :registrations, only: [:new, :create]

end

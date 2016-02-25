class RegistrationsController < ApplicationController

  def new
    @registration = Registration.new
    @event = Event.first
  end

  def create
    if Event.first.seat_limit > Registration.count
      if Registration.where(email:params[:registration][:email]).count < 1
        new_registration = Registration.create(params.require(:registration).permit(:email, :first_name, :last_name, :phone_number))
      end
    end
  end
end

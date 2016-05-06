class RegistrationsController < ApplicationController

  def create
    seats_available = Event.find(event_id).seat_limit > Registration.where(event_id: event_id).count
    if seats_available
      @new_registration = Registration.new(registration_params)

      unless @new_registration.save
        flash.now[:error] = @new_registration.errors.full_messages.join(' ')
      end
    end

  end

  private

  def event_id
    params[:event_id]
  end

  def registration_params
    params.require(:registration)
      .permit(:email, :first_name, :last_name, :phone_number)
      .merge({ event_id: event_id })
  end

end

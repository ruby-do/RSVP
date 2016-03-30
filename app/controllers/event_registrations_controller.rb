class EventRegistrationsController < ApplicationController
  #TODO: Authenticate!
  http_basic_authenticate_with name: "rsvp", password: "batida"

  def index
    registrations = Registration.order(created_at: :asc)
    @registrations = registrations.map { |r|
      ViewEventRegistration.new(
        RegistrationDecorator.new(r)
      )
    }
    #TODO: Delete this decorator
    # This decorator is only for illustration purposes, a decorator is not really necessary to solve a problem as simple as this one. - Jorge.
  end

  class RegistrationDecorator

    def initialize(registration)
      @registration = registration
    end

    def full_name
      [registration.first_name,
        registration.last_name].join(" ")
    end

    def email
      registration.email
    end

    def registration_date
      registration.created_at
    end

    private

    attr_reader :registration
  end

  class ViewEventRegistration
    SLASHED_DATE_FORMAT = "%m/%d/%Y"

    def initialize(decorated_registration)
      @decorated_registration = decorated_registration
    end

    def full_name
      capitalized_full_name
    end

    def email
      decorated_registration.email
    end

    def registration_date
      decorated_registration.registration_date.strftime(SLASHED_DATE_FORMAT)
    end

    private
    attr_reader :decorated_registration

    def capitalized_full_name
      decorated_registration.full_name.titleize
    end
  end
end

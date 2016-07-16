class Registration < ActiveRecord::Base
  class RegistrationEmailValidator < ActiveModel::Validator
    def validate(registration)
      if already_registered?(registration)
        registration.errors['email'] << "is already registered to this event"
      end
    end

    def already_registered?(registration)
      Registration.where(email: registration.email, event_id: registration.event_id).count > 0
    end
  end

  belongs_to :user
  belongs_to :event

  # validates :phone_number, format: { with: /[0-9]{10}/ }, allow_blank: true
  # validates :email, presence: true, format: { with: /[\w.-]+@[a-zA-Z]+\.[a-zA-Z]+/ }
  # validates_with RegistrationEmailValidator

  # validates_presence_of :first_name, :last_name

end

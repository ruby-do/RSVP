require 'rails_helper'

describe RegistrationsController, type: :controller do
  let!(:event) { create(:event) }
  let(:registration_params) do
    {
      email: 'josh@josh.com',
      phone_number: '8097635555',
      first_name: 'Josh',
      last_name: 'Abreu'
    }
  end

  describe "POST Users registers to an event" do
    context "with valid params" do

      it do
        expect {
          post :create, { event_id: event.id, registration: registration_params }
        }.to change { Registration.count }.from(0).to(1)

        expect(response.status).to eql(200)
      end
    end

    context "when the email is already registered for that event" do
      let(:email_already_registered) { "josh@josh.com" }

      it do
        create(:registration, email: email_already_registered, event_id: event.id)

        expect {
          post :create,
          {
            event_id: event.id,
            registration: registration_params.merge(email: email_already_registered)
          }

        }.not_to change { Registration.count }
      end
    end

    context "when there are no seats available" do

      it do

      end
    end

  end
end

require 'spec_helper'

describe UsersController, type: :controller do
  describe '#show' do
    let(:user) { FactoryGirl.create(:user) }

    context 'when the user is logged in' do
      let!(:registration) do
        FactoryGirl.create(:registration, user_id: user.id)
      end

      before do
        session[:user_id] = user.id
      end
      it "is succesfull" do
        # TODO: change the action used for this test.
        # we are refering to something like a profile.
        get :show, id: user.id
        expect(response.status).to eq(200)
        expect(assigns(:events).ids).to eq([registration.event_id])
      end
    end

    context "when the user is not logged_in" do
      it 'redirects to the login page' do
        get :show, id: user.id
        expect(response.status).to eq(302)
        expect(flash[:error]).to eq('You must log in to access this page.')
      end
    end
  end
end

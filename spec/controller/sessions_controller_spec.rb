require 'spec_helper'

describe SessionsController, type: :controller do
  describe '#new' do
    it 'is successfull' do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe '#create' do
    let!(:user){ FactoryGirl.create(:user, email: 'viktor@vjustov.me', password: 'changeme')}

    context 'with valid credentials' do

      it 'should log me in' do
        post :create, session: { email: 'viktor@vjustov.me', password: 'changeme' }
        expect(response.status).to eq(302)
        expect(flash[:notice]).to eql('Welcome back!')
      end
    end

    context 'with invalid credentials' do
      it "should not log me in" do
        post :create, session: { email: 'viktor@vjustov.me', password: 'wrongpass' }
        expect(response.status).to eq(200)
        expect(flash[:error]).to eql('Wrong email or password!')
      end
    end
  end

end

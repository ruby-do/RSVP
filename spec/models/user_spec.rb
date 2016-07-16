require 'spec_helper'

describe User do
  let(:user) { FactoryGirl.build(:user) }

  it 'requires a nonblank password' do
    user.password = ''
    expect(user).to_not be_valid
  end
end

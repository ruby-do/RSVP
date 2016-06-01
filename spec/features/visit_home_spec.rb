require 'rails_helper'

describe 'An user visits the homepage', type: :feature do

  it "should allow me to visit the homepage" do
    visit root_path
    expect(page.title).to eql('RSVP')
    expect(page.status_code).to eql(200)
  end

end

task migrate_registration_data: :environment do
  Registration.all.each do |registration|
    user_params = registration.attributes.slice( *%w(email first_name last_name phone_number) )
    User.create(user_params)
  end
end

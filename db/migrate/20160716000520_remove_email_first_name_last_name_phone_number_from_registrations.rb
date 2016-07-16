class RemoveEmailFirstNameLastNamePhoneNumberFromRegistrations < ActiveRecord::Migration
  def change
    remove_column :registrations, :email
    remove_column :registrations, :first_name
    remove_column :registrations, :last_name
    remove_column :registrations, :phone_number

    change_table :registrations do |t|
      t.references :user
    end
  end
end

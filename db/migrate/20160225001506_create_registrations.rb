class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :email
      t.string :phone_number
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end

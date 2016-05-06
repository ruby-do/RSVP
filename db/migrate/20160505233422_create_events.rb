class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.integer :seat_limit

      t.timestamps null: false
    end
  end
end

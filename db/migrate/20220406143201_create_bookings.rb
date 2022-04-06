class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.text :status
      t.references :user_id, null: false, foreign_key: true
      t.references :pet_id, null: false, foreign_key: true
      t.text :start_time
      t.text :end_time

      t.timestamps
    end
  end
end

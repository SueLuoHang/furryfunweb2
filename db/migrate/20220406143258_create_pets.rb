class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :user_id, null: false, foreign_key: true
      t.text :pet_name
      t.text :location
      t.text :description
      t.text :gender
      t.text :photos

      t.timestamps
    end
  end
end

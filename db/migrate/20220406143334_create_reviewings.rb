class CreateReviewings < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewings do |t|
      t.text :stars
      t.text :comments
      t.references :user_id, null: false, foreign_key: true
      t.references :pet_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end

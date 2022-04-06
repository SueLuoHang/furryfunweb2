class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :user_name
      t.text :phone_number
      t.text :email

      t.timestamps
    end
  end
end

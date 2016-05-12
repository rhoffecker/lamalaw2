class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.string :name
      t.date :date_of_birth
      t.string :party_type
      t.string :case_id
      t.string :phone
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end

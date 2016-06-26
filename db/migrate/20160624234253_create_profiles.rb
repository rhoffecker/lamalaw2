class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :user_id
      t.string :integer
      t.string :first_name
      t.string :string
      t.string :last_name
      t.string :string
      t.string :birth_date
      t.string :date
      t.string :ssn
      t.string :string
      t.string :home_phone
      t.string :string
      t.string :work_phone
      t.string :string
      t.string :cell_phone
      t.string :string

      t.timestamps null: false
    end
  end
end

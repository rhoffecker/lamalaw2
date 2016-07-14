class AddProfileTable < ActiveRecord::Migration
  def up
    create_table :profiles do |t|
      t.string    :user_id
      t.string    :first_name
      t.string    :last_name
      t.date      :birth_date
      t.string    :ssn
      t.string    :home_phone
      t.string    :work_phone
      t.string    :cell_phone
      t.string    :case_number
    end
  end

  def down
    drop_table  :profiles
  end
end

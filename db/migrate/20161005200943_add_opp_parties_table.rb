class AddOppPartiesTable < ActiveRecord::Migration
  def up
    create_table :opp_parties do |t|
      t.belongs_to :user, index: true
      t.string :first_name
      t.string :last_name, :string
      t.date :birth_date, :date
      t.string :gender, :string
      t.string :height, :string
      t.string :weight, :string
      t.string :dl_number, :string
      t.string :dl_state, :string
      t.string :ssn, :string
      t.string :home_phone, :string
      t.string :work_phone, :string
      t.string :cell_phone, :string
      t.string :add_line1, :string
      t.string :add_line2, :string
      t.string :add_city, :string
      t.string :add_state, :string
      t.string :add_zip, :string      
      t.date :az_since, :date
      t.string :email_listed, :string
      t.string :employer, :string
      t.string :job_title, :string
      t.string :emp_add_line1, :string
      t.string :emp_add_line2, :string
      t.string :emp_add_city, :string
      t.string :emp_add_state, :string
      t.string :emp_add_zip, :string
      t.string :emp_phone, :string
      t.string :emp_fax, :string
      t.timestamps null: false
    end
  end
  def down
    drop_table :opp_parties
  end
end

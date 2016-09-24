class AddPersonalDetailsToProfile < ActiveRecord::Migration
  def up
    add_column :profiles, :gender, :string
    add_column :profiles, :height, :string
    add_column :profiles, :weight, :string
    add_column :profiles, :dl_number, :string
    add_column :profiles, :dl_state, :string
    add_column :profiles, :add_line1, :string
    add_column :profiles, :add_line2, :string
    add_column :profiles, :add_city, :string
    add_column :profiles, :add_state, :string
    add_column :profiles, :add_zip, :string
    add_column :profiles, :az_since, :date
    add_column :profiles, :email_listed, :string
    add_column :profiles, :employer, :string
    add_column :profiles, :job_title, :string
    add_column :profiles, :emp_add_line1, :string
    add_column :profiles, :emp_add_line2, :string
    add_column :profiles, :emp_add_city, :string
    add_column :profiles, :emp_add_state, :string
    add_column :profiles, :emp_add_zip, :string
    add_column :profiles, :emp_phone, :string
    add_column :profiles, :emp_fax, :string
  end

  def down
     remove_column :profiles, :gender, :height, :weight, :dl_number, :dl_state, :add_line1, :add_line2, :add_city, :add_state, :add_zip, :az_since, :email_listed, :employer, :job_title, :emp_add_line1, :emp_add_line2, :emp_add_city, :emp_add_state, :emp_add_zip, :emp_phone, :emp_fax
  end
end

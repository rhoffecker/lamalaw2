class AddColumnsToOppPartiesTable < ActiveRecord::Migration
  def up
    add_column :opp_parties, :first_name, :string
    add_column :opp_parties, :last_name, :string
    add_column :opp_parties, :birth_date, :date
    add_column :opp_parties, :gender, :string
    add_column :opp_parties, :height, :string
    add_column :opp_parties, :weight, :string
    add_column :opp_parties, :dl_number, :string
    add_column :opp_parties, :dl_state, :string
    add_column :opp_parties, :ssn, :string
    add_column :opp_parties, :home_phone, :string
    add_column :opp_parties, :work_phone, :string
    add_column :opp_parties, :cell_phone, :string
    add_column :opp_parties, :add_line1, :string
    add_column :opp_parties, :add_line2, :string
    add_column :opp_parties, :add_city, :string
    add_column :opp_parties, :add_state, :string
    add_column :opp_parties, :add_zip, :string
    add_column :opp_parties, :az_since, :date
    add_column :opp_parties, :email_listed, :string
    add_column :opp_parties, :employer, :string
    add_column :opp_parties, :job_title, :string
    add_column :opp_parties, :emp_add_line1, :string
    add_column :opp_parties, :emp_add_line2, :string
    add_column :opp_parties, :emp_add_city, :string
    add_column :opp_parties, :emp_add_state, :string
    add_column :opp_parties, :emp_add_zip, :string
    add_column :opp_parties, :emp_phone, :string
    add_column :opp_parties, :emp_fax, :string
  end

  def down
     drop_table :opp_parties
  end
end

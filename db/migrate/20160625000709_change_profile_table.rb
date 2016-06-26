class ChangeProfileTable < ActiveRecord::Migration
  def change :profiles do |t|
   t.remove :integer, :string, :date
   t.integer :user_id
   t.date :birth_date
  end
end

class CreateOppParties < ActiveRecord::Migration
  def change
    create_table :opp_parties do |t|

      t.timestamps null: false
    end
  end
end

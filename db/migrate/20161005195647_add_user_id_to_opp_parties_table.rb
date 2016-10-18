class AddUserIdToOppPartiesTable < ActiveRecord::Migration
  def change
    drop_table :opp_parties
  end
end

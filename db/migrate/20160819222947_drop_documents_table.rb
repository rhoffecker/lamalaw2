class DropDocumentsTable < ActiveRecord::Migration
  def up
    drop_table :documents
  end

  def down
    create_table :documents do |t|
      t.string    :user_id
      t.string    :doc_type
      t.datetime  :create_date
    end
  end
end

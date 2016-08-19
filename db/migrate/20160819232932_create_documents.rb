class CreateDocuments < ActiveRecord::Migration
  def up
    create_table :documents do |t|
      t.string :user_id
      t.string :doc_type
      t.datetime :create_date

      t.timestamps null: false
    end
  end
  def down
    drop_table :documents
  end
end

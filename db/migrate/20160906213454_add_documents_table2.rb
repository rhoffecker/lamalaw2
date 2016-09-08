class AddDocumentsTable2 < ActiveRecord::Migration
  def up
    create_table :documents do |t|
      t.belongs_to :user, index: true
      t.string :doc_type
      t.datetime :create_date

      t.timestamps null: false
    end
  end
  def down
    drop_table :documents
  end

end

class ChangeDocumentDatetimeToDate < ActiveRecord::Migration
  def up
    change_column :documents, :create_date, :date
  end
  
  def down
    change_column :document, :create_date, :datetime
  end
end

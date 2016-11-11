class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :yn01
      t.string :yn02
      t.string :yn03
      t.string :yn04
      t.string :yn05
      t.string :yn06
      t.references :document, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

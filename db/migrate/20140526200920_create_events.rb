class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :startfrom
      t.datetime :endon
      t.integer :entry_fee 
      t.timestamps
    end
  end
end

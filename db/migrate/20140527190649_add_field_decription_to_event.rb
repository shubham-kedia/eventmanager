class AddFieldDecriptionToEvent < ActiveRecord::Migration
  def change
     add_column :events, :short_desc, :string, :after => :entry_fee
     add_column :events, :long_desc, :string, :after => :short_desc
  end
end

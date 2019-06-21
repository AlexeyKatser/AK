class Addtimetorequest < ActiveRecord::Migration[5.2]
  def change
  	add_column :requests, :preferedTime, :datetime
  	add_column :requests, :setTime, :datetime
  end
end

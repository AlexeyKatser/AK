class AddStatusRtypeToRequests < ActiveRecord::Migration[5.2]
  def change
  	add_column :requests, :status, :string
  	add_column :requests, :rtype, :integer 
  end
end

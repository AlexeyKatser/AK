class AddServiceidToRequest < ActiveRecord::Migration[5.2]
  def change
  	add_column :requests :service_id, :integer
  end
end

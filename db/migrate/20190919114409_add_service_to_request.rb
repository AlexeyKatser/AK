class AddServiceToRequest < ActiveRecord::Migration[5.2]
  def change
    add_reference :requests, :service, foreign_key: true
  end
end

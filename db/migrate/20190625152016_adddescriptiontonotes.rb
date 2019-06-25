class Adddescriptiontonotes < ActiveRecord::Migration[5.2]
  def change
  	add_column :notes, :description, :string
  end
end

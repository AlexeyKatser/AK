class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :icon
      t.integer :stype
      t.integer :durationinminutes
      t.string :amountofvisits
      t.string :string

      t.timestamps
    end
  end
end

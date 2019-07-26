class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :datestart
      t.date :dateend
      t.string :description
      t.string :image
      t.string :price

      t.timestamps
    end
  end
end

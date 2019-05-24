class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :img_url
      t.string :text
      t.string :topic

      t.timestamps
    end
  end
end

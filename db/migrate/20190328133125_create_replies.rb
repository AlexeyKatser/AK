class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :user
      t.string :text

      t.timestamps
    end
  end
end

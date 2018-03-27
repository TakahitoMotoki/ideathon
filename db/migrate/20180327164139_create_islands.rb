class CreateIslands < ActiveRecord::Migration[5.1]
  def change
    create_table :islands do |t|
      t.string :name
      t.integer :user_id
      t.string :description
      t.string :text
      t.binary :icon

      t.timestamps
    end
  end
end

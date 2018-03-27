class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.string :title
      t.text :description
      t.binary :image
      t.integer :island_id
      t.date :deadline

      t.timestamps
    end
  end
end

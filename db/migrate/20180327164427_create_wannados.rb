class CreateWannados < ActiveRecord::Migration[5.1]
  def change
    create_table :wannados do |t|
      t.integer :user_id
      t.integer :building_id

      t.timestamps
    end
  end
end

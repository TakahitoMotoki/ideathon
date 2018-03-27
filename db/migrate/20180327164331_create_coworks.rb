class CreateCoworks < ActiveRecord::Migration[5.1]
  def change
    create_table :coworks do |t|
      t. :user_id
      t.integer :building_id

      t.timestamps
    end
  end
end

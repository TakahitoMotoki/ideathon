class AddIconToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :icon, :binary
  end
end
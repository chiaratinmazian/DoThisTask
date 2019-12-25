class AddStatusToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :completed, :boolean, default: false
  end
end

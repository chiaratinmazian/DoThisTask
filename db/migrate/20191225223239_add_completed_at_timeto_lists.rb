class AddCompletedAtTimetoLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :completed_at, :datetime
  end
end

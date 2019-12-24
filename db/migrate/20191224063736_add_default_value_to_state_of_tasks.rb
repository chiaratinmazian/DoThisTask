class AddDefaultValueToStateOfTasks < ActiveRecord::Migration[5.2]
  def change
      change_column_default(:tasks, :state, 'pending')
  end
end

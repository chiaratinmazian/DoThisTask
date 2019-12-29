class AddFieldToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :domain, :string, default: "Else"
  end
end

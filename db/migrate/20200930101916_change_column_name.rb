class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :designation, :designation_id
  end
end

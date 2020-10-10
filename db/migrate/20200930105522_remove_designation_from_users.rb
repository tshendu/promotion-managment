class RemoveDesignationFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :designation_id, :integer
  end
end

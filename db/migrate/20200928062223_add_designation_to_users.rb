class AddDesignationToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :designation, :integer
  end
end

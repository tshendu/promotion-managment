class RemoveDesignationRefToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :designation, index: true, foreign_key: true
  end
end

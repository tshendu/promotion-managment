class RemoveDepartmentRefToUsers < ActiveRecord::Migration[6.0]
  def change
    remove_reference :users, :department, index: true, foreign_key: true
  end
end

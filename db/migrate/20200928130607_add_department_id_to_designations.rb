class AddDepartmentIdToDesignations < ActiveRecord::Migration[6.0]
  def change
    add_column :designations, :department_id, :integer
  end
end

class AddDesignationToEmployee < ActiveRecord::Migration[6.0]
  def change
    add_reference :employees, :designation, null: false, foreign_key: true
  end
end

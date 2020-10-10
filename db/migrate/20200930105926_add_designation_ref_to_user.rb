class AddDesignationRefToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :designation, null: false, foreign_key: true
  end
end

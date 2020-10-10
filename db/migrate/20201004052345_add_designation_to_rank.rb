class AddDesignationToRank < ActiveRecord::Migration[6.0]
  def change
    add_reference :ranks, :designation, null: false, foreign_key: true
  end
end

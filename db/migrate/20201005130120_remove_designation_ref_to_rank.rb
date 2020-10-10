class RemoveDesignationRefToRank < ActiveRecord::Migration[6.0]
  def change
    remove_reference :ranks, :designation, index: true, foreign_key: true
  end
end

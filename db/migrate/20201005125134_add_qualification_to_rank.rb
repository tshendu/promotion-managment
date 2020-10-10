class AddQualificationToRank < ActiveRecord::Migration[6.0]
  def change
    add_reference :ranks, :qualification, null: false, foreign_key: true
  end
end

class CreateRanks < ActiveRecord::Migration[6.0]
  def change
    create_table :ranks do |t|
      t.string :rank_title
      t.integer :level
      t.decimal :salary
      t.boolean :is_active
      t.string :requirement
      t.timestamps
    end
  end
end

class CreateStaffType < ActiveRecord::Migration[6.0]
  def change
    create_table :staff_types do |t|
      t.string :staff_type
    end
  end
end

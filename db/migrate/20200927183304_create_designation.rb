class CreateDesignation < ActiveRecord::Migration[6.0]
  def change
    create_table :designations do |t|
      t.string :deg_name
      t.boolean :deg_status, default: true
    end
  end
end

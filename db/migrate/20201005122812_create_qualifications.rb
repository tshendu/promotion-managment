class CreateQualifications < ActiveRecord::Migration[6.0]
  def change
    create_table :qualifications do |t|
      t.string :q_name
      t.boolean :status

      t.timestamps
    end
  end
end

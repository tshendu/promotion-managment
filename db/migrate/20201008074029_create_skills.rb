class CreateSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :skill_description
      t.boolean :is_active

      t.timestamps
    end
  end
end

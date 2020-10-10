class CreateEmployeeSkills < ActiveRecord::Migration[6.0]
  def change
    create_table :employee_skills do |t|
    t.integer :skills_point
      t.timestamps
    end
  end
end

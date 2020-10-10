class RenameNameToDepName < ActiveRecord::Migration[6.0]
  def change

    rename_column :departments,  :name,  :dep_name
  end
end

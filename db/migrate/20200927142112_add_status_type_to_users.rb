class AddStatusTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :status_type, :string
  end
end

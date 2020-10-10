class RemoveUserFromUserLog < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_logs, :user_id, :integer
  end
end

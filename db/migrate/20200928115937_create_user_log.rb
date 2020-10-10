class CreateUserLog < ActiveRecord::Migration[6.0]
  def change
    create_table :user_logs do |t|
      t.integer :user_id
      t.date :log_date
      t.string :user_log
    end
  end
end

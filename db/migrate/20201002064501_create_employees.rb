class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :cid_no
      t.string :contact_no
      t.string :email_address
      t.integer :age
      t.date :date_of_joining

      t.timestamps
    end
  end
end

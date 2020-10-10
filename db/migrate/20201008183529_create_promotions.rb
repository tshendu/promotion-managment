class CreatePromotions < ActiveRecord::Migration[6.0]
  def change
    create_table :promotions do |t|
      t.date :promotion_date

      t.timestamps
    end
  end
end

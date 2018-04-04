class CreateFoodItems < ActiveRecord::Migration[5.1]
  def change
    create_table :food_items do |t|
      t.string :title
      t.datetime :expiration_date
      t.string :address
      t.datetime :available_start
      t.datetime :available_end
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

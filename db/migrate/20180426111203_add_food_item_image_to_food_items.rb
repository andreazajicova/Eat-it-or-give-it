class AddFoodItemImageToFoodItems < ActiveRecord::Migration[5.1]
  def change
    
    add_attachment :food_items, :food_item_image
    
  end
end

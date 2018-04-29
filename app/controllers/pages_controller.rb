class PagesController < ApplicationController
  def home
   end 
    def vegetables
      @vegetables =FoodItem.all.where(category: "vegetables")
      @food_categories =FoodItem.all.where(category: "food_categories")
      @canned_food =FoodItem.all.where(category: "canned_food")
  end
end

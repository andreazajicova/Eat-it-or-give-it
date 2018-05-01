class PagesController < ApplicationController
 def home
 end 
  def vegetables
      @vegetables =FoodItem.all.where(category: "vegetables")
  end
  
  def canned_food
      @canned_food =FoodItem.all.where(category: "canned food")
  end
  
  def bottled_drinks
      @bottled_drinks = FoodItem.all.where(category: "bottled drinks")
  end
end

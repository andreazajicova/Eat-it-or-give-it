class PagesController < ApplicationController
  def home
   end 
    def vegetables
      @vegetables =FoodItem.all.where(category: "vegetables")
  end
end

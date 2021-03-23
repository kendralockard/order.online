class Recipe < ApplicationRecord

  def parse_ingredients
    list = ingredients.split(";")
    
    list.map! do |i|
      if i.include?(".")
        l = i.split(".")

        [l.first, l.last]
      else
        [i]
      end
    end

    list
  end
end
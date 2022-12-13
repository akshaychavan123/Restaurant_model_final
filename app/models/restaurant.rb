class Restaurant < ApplicationRecord
    has_many :dishes
    has_many :reviews , as: :reviewable

    
    def showdishes
        self.dishes.each do |dish|
            dish.menu 
            dish.price
        end
    end


    paginates_per 5

end

    
   
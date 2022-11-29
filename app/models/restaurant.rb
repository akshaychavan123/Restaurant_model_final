class Restaurant < ApplicationRecord
    paginates_per 1
    has_many :dishes
    has_many :reviews
    

    # just for study purpose
    # def greeting
    #      "hello akshay #{name} here we go"
    # end 
    def showreview
        self.reviews
    end
    def showdish
        self.dishes
    end


end

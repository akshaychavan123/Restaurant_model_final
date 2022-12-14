class Admin::RestaurantsController < ApplicationController
    before_action :set_restaurant , only: [:edit, :update, :show, :destory]
    def index
      @restaurants = Restaurant.all
    end
  
    def new
      @restaurant = Restaurant.new
    end
  
    def create
      @restaurant = Restaurant.new(restaurant_params)
      if @restaurant.save
        redirect_to admin_restaurants_path
      else 
        render :new
      end
    end
    def show
     
    end
    def dishes_params
      params.require(:resto).permit(:name)
    end
  
    def edit
    end
    def update
      if @restaurant.update(restaurant_params)
        redirect_to admin_restaurants_path(@restaurant)
      else
        render :edit
      end
    end
    
  
    def destroy
      @restaurant.destroy
      redirect_to admin_restaurants_path
    end
    private
    def restaurant_params
      params.require(:restaurant).permit(:name , :place)
    end
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end 
  end
  
class RestaurantsController < ApplicationController
  def index
    binding.pry
    @restaurants = Restaurant.all
    print "restarents---#{@restaurants}"
  end

  def new
    @restaurant = Restaurant.new
    @resto = @restaurant.dishes.new()
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else 
      render :new
    end
    

    @resto = @restaurant.dishes.new()
    
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    # print "1111111111111111111111111111zzz"
    # print "#{@restaurant.id}"
    # @resto = @restaurant.dishes.new(dishes_params)
    # print "22222222222222222"
    # print "#{@resto.name}"
    # print "#{@resto.id}"

    # if @resto.save
    #   render :update
    # else
    #   render :create
    # end
  end
  def dishes_params
    params.require(:resto).permit(:name)
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    # print "1111111111111111111111111111zzz"  
    # print "#{@restaurant.name}"
    # @resto = @restaurant
    # print "22222222222222222"
    # print "#{@resto}"
    # if @resto.save
    #   render :update
    # else
    #   render :create
    # end
  end

  def dish
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      redirect_to restaurants_path(@restaurant)
    else
      render :edit
    end
  end
  

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end
  private
  def restaurant_params
    params.require(:restaurant).permit(:name , :place)
  end
  
   
end

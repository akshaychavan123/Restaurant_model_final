class DishesController < ApplicationController
  before_action :set_dish , only: [:show , :edit , :update , :destroy]
  def index
    @dishes = Dish.all
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.save 
      redirect_to dishes_path
    else
      render :show
    end
  end

  def show
  end

  def edit

  end

  def update
    @dish.update(dish_params)
    redirect_to dishes_path
  end

  def destroy
    @dish.destroy
  end
  def dish_params
    params.require(:dish).permit(:name , :price , :restaurant_id)
  end
  def set_dish
    @dish = Dish.find(params[:id])
  end
end

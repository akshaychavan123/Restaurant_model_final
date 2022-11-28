class ReviewsController < ApplicationController
  before_action :set_review , only: [:show , :edit , :update , :destroy]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save 
      redirect_to reviews_path
    else
      render :show
    end
  end

  def show
  end

  def edit

  end

  def update
    @review.update(review_params)
    redirect_to reviews_path
  end

  def destroy
    @review.destroy
  end
  def review_params
    params.require(:review).permit(:comment, :rating, :restaurant_id)
  end
  def set_review
    @review = Review.find(params[:id])
  end
end

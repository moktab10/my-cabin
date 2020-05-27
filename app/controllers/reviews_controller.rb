class ReviewsController < ApplicationController
  def create
    @cabin = Cabin.find(params[:cabin_id])
    @review = Review.new(review_params)
    @review.cabin = @cabin
    if @review.save
      redirect_to cabin_path(@cabin)
    else
      render "cabins/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
end

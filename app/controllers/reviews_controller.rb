class ReviewsController < ApplicationController
  def create
    @dictator = dictator.find(params[:dictator_id])
    @review = Review.new(review_params)
    @review.dictator = @dictator
    if @review.save
      redirect_to dictator_path(@dictator)
    else
      render "dictators/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

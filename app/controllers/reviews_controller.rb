class ReviewsController < ApplicationController
  def index
    @reviews = Review.where(artwork: params[:artwork])
  end

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
    @review.booking = @booking
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      flash[:notice] = "Your review has been saved"
      redirect_to dashboard_path
    else
      flash[:notice] = "Review unsuccessful"
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end

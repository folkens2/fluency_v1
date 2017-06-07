class TutorreviewsController < ApplicationController
  def show
    @reviews = Review.all
    @tutor = Tutor.find(params[:id])
    @tutor_reviews = Review.where(:tutor_id => @tutor.id)

    render("tutor_reviews/show.html.erb")
  end
end

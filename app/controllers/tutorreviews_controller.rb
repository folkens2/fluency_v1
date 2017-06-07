class TutorreviewsController < ApplicationController
  def show
    @reviews = Review.all
    @tutor_reviews = @reviews.where(:tutor_id => :id)

    render("tutor_reviews/show.html.erb")
  end
end

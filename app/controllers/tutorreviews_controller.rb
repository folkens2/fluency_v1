class TutorreviewsController < ApplicationController
  def show
    @reviews = Review.all
    @tutor = Tutor.find(params[:id])
    @tutor_reviews = Review.where(:tutor_id => @tutor.id)

    render("tutor_reviews/show.html.erb")
  end

  def new
    @review = Review.new
    @tutor = Tutor.find(params[:id])

    render("tutor_reviews/new.html.erb")
  end

  def create
    @review = Review.new

    @review.reviewer_id = params[:reviewer_id]
    @review.tutor_id = params[:tutor_id]
    @review.comments = params[:comments]
    @review.rating = params[:rating]

    save_status = @review.save

    if save_status == true
      redirect_to("/reviews/#{@review.id}", :notice => "Review created successfully.")
    else
      render("tutor_reviews/new.html.erb")
    end
  end

end

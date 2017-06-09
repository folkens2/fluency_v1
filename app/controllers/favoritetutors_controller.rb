class FavoritetutorsController < ApplicationController
  def index
    @favoritetutors = Favoritetutor.where(:user_id => current_user.id)

    render("favoritetutors/index.html.erb")
  end

  def show
    @favoritetutor = Favoritetutor.find(params[:id])

    render("favoritetutors/show.html.erb")
  end

  def new
    @favoritetutor = Favoritetutor.new

    render("favoritetutors/new.html.erb")
  end

  def create
    @favoritetutor = Favoritetutor.new

    @favoritetutor.user_id = params[:user_id]
    @favoritetutor.tutor_id = params[:tutor_id]

    save_status = @favoritetutor.save

    if save_status == true
      redirect_to("/favoritetutors/", :notice => "Favorite tutor added successfully.")
    else
      render("favoritetutors/new.html.erb")
    end
  end

  def autocreate
    @favoritetutor = Favoritetutor.new

    @favoritetutor.user_id = params[:user_id]
    @favoritetutor.tutor_id = params[:tutor_id]

    save_status = @favoritetutor.save

    if save_status == true
      redirect_to("/tutors/", :notice => "Favorite tutor added successfully.")
    else
      render("favoritetutors/new.html.erb")
    end
  end

  def edit
    @favoritetutor = Favoritetutor.find(params[:id])

    render("favoritetutors/edit.html.erb")
  end

  def update
    @favoritetutor = Favoritetutor.find(params[:id])

    @favoritetutor.user_id = params[:user_id]
    @favoritetutor.tutor_id = params[:tutor_id]

    save_status = @favoritetutor.save

    if save_status == true
      redirect_to("/favoritetutors/#{@favoritetutor.id}", :notice => "Tutor added to favorites successfully.")
    else
      render("favoritetutors/edit.html.erb")
    end
  end

  def destroy
    @favoritetutor = Favoritetutor.find(params[:id])

    @favoritetutor.destroy

    if URI(request.referer).path == "/favoritetutors/#{@favoritetutor.id}"
      redirect_to("/", :notice => "Tutor removed from favorites.")
    else
      redirect_to(:back, :notice => "Tutor removed from favorites.")
    end
  end
end

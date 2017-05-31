class LanguagesController < ApplicationController
  def index
    @languages = Language.all

    render("languages/index.html.erb")
  end

  def show
    @language = Language.find(params[:id])

    render("languages/show.html.erb")
  end

  def new
    @language = Language.new

    render("languages/new.html.erb")
  end

  def create
    @language = Language.new

    @language.name = params[:name]

    save_status = @language.save

    if save_status == true
      redirect_to("/languages/#{@language.id}", :notice => "Language created successfully.")
    else
      render("languages/new.html.erb")
    end
  end

  def edit
    @language = Language.find(params[:id])

    render("languages/edit.html.erb")
  end

  def update
    @language = Language.find(params[:id])

    @language.name = params[:name]

    save_status = @language.save

    if save_status == true
      redirect_to("/languages/#{@language.id}", :notice => "Language updated successfully.")
    else
      render("languages/edit.html.erb")
    end
  end

  def destroy
    @language = Language.find(params[:id])

    @language.destroy

    if URI(request.referer).path == "/languages/#{@language.id}"
      redirect_to("/", :notice => "Language deleted.")
    else
      redirect_to(:back, :notice => "Language deleted.")
    end
  end
end

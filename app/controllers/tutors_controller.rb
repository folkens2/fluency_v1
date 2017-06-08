class TutorsController < ApplicationController
  def index
    @tutors = Tutor.all
    @languages = Language.all
    @skills = Skill.all
    @origins = Country.all

    render("tutors/index.html.erb")
  end

  def show
    @tutor = Tutor.find(params[:id])

    render("tutors/show.html.erb")
  end

  def new
    @tutor = Tutor.new

    render("tutors/new.html.erb")
  end

  def create
    @tutor = Tutor.new

    @tutor.instruction_lang_id = params[:instruction_lang_id]
    @tutor.instruction_lang_skill_id = params[:instruction_lang_skill_id]
    @tutor.bio = params[:bio]
    @tutor.name = params[:name]
    @tutor.rate_hourly = params[:rate_hourly]
    @tutor.origin_id = params[:origin_id]

    save_status = @tutor.save

    if save_status == true
      redirect_to("/tutors/#{@tutor.id}", :notice => "Tutor created successfully.")
    else
      render("tutors/new.html.erb")
    end
  end

  def edit
    @tutor = Tutor.find(params[:id])

    render("tutors/edit.html.erb")
  end

  def update
    @tutor = Tutor.find(params[:id])

    @tutor.instruction_lang_id = params[:instruction_lang_id]
    @tutor.instruction_lang_skill_id = params[:instruction_lang_skill_id]
    @tutor.bio = params[:bio]
    @tutor.name = params[:name]
    @tutor.rate_hourly = params[:rate_hourly]
    @tutor.origin_id = params[:origin_id]

    save_status = @tutor.save

    if save_status == true
      redirect_to("/tutors/#{@tutor.id}", :notice => "Tutor updated successfully.")
    else
      render("tutors/edit.html.erb")
    end
  end

  def destroy
    @tutor = Tutor.find(params[:id])

    @tutor.destroy

    if URI(request.referer).path == "/tutors/#{@tutor.id}"
      redirect_to("/", :notice => "Tutor deleted.")
    else
      redirect_to(:back, :notice => "Tutor deleted.")
    end
  end
end

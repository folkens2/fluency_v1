class SkillsController < ApplicationController
  def index
    @skills = Skill.all

    render("skills/index.html.erb")
  end

  def show
    @skill = Skill.find(params[:id])

    render("skills/show.html.erb")
  end

  def new
    @skill = Skill.new

    render("skills/new.html.erb")
  end

  def create
    @skill = Skill.new

    @skill.level = params[:level]

    save_status = @skill.save

    if save_status == true
      redirect_to("/skills/#{@skill.id}", :notice => "Skill created successfully.")
    else
      render("skills/new.html.erb")
    end
  end

  def edit
    @skill = Skill.find(params[:id])

    render("skills/edit.html.erb")
  end

  def update
    @skill = Skill.find(params[:id])

    @skill.level = params[:level]

    save_status = @skill.save

    if save_status == true
      redirect_to("/skills/#{@skill.id}", :notice => "Skill updated successfully.")
    else
      render("skills/edit.html.erb")
    end
  end

  def destroy
    @skill = Skill.find(params[:id])

    @skill.destroy

    if URI(request.referer).path == "/skills/#{@skill.id}"
      redirect_to("/", :notice => "Skill deleted.")
    else
      redirect_to(:back, :notice => "Skill deleted.")
    end
  end
end

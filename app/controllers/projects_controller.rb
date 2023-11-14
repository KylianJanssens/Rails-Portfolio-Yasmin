class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params_project)
    @project.save!
    redirect_to project_path(@project)
  end


  private

  def params_project
    params.require(:project).permit(:name, :description, :cover_photo, photos: [])
  end
end

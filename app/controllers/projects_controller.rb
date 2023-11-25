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
    if @project.save!
      redirect_to project_path(@project)
    else
    render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project = @project.update(params_project)
    redirect_to projects_path
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path, status: :see_othher
  end

  private

  def params_project
    params.require(:project).permit(:name, :description, :cover_photo, photos: [])
  end

end

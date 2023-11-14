class ProjectsController < ApplicationController

  def index
  end

  def show
    @projects = Project.New
  end

end

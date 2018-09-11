class ProjectsController < ApplicationController
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "Project saved!"
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.assign_attributes(project_params)

    if @project.update(project_params)
      flash[:notice] = "Project was updated."
      redirect_to @project
    else
      flash.now[:alert] = "There was an error saving the project. Please try again."
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])

    if @project.destroy
      flash[:notice] = "\"#{@project.title}\" was deleted successfully."
      redirect_to projects_path
    else
      flash.now[:alert] = "There was an error deleting the project."
      render :show
    end
  end

  def show
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :image)
    end
end

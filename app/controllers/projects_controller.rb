class ProjectsController < ApplicationController
	before_action :require_login

	def index
		@projects = Project.all
	end

	def create
		name = params[:name]
		@project = Project.new(name: name)
		@project.save
		flash[:success] = "Successfully created #{@project.name}"
		redirect_to "/projects"
	end

	def destroy
		name = params[:name]
		@project = Project.find_by(name: name)

		if @project
			@project.destroy
			flash[:info] = "Successfully destroyed #{name}"
		else
			flash[:warning] = "Project #{name} not found"
		end

		redirect_to "/projects"
	end
end

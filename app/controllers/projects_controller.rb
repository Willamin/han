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

	def edit_name
		old_name = params[:old_name]
		new_name = params[:new_name]
		@project = Project.find_by(name: old_name)
		@project.name = new_name
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

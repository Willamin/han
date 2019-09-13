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
end

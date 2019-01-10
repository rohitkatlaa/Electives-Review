class ElectivesController < ApplicationController
	before_filter :authorize,only: [:edit,:new,:create,:update,:destroy]
	def index
		@electives = Elective.order(created_at: :desc).all
	end

	def new
                render "new"
        end

	def show
		@electives=Elective.find(params[:id])
		@posts = @electives.posts
	end

	def create
		@new_elective = Elective.new(elective_params)
		if @new_elective.save
			redirect_to root_path
		end
	end

	def edit
		@electives=Elective.find(params[:id])
	end

	def update
		@electives=Elective.find(params[:id])
		if @electives.update_attributes(elective_params)
			redirect_to elective_path
		else
			render "edit"
		end
	end

	def destroy
		@elective=Elective.find(params[:id])
		@elective.destroy
		redirect_to root_path
	end

	private
	def elective_params
		params.require(:elective).permit(:course_name, :course_proposer_name, :course_instructor_name, :credits, :semester, :course_description, :couse_content, :text_and_references, :syllabus, :notes_t, :notes, :assignments_t, :assignment, :projects, :projects_t)
	end
end


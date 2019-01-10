$id
class PostsController < ApplicationController
	def new
		@electives=Elective.find(params[:id])
		$id=@electives.id
                render "new"
        end

	def create
		@new_post = Post.new(post_params)
		if @new_post.save
			redirect_to elective_path($id) 
		end
	end

	private
	def post_params 
		params.require(:post).permit(:comments).merge(elective_id: $id)
	end	
end

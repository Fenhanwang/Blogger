class CommentsController < ApplicationController
	before_filter :require_login, except: [:destroy]
	def create
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]

		@comment.save

		redirect_to article_path(@comment.article)
	end

	private
	def comment_params
  		params.require(:comment).permit(:author_name, :body)
	end

	def require_login
		unless current_user
			redirect_to root_path
			return false
		end
	end
end

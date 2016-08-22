class CommentsController < ApplicationController
  def index
  	@comments = Comment.all
  	render 'comments/index'
  end

  def create
  	puts params
  	# params[:product_id] = params[:product_id].to_i
  	comment = Comment.new(comment_params)
  	comment[:product_id] = params[:product_id]
  	comment.save
  	puts comment.errors.full_messages if comment.errors 
  	redirect_to '/products/' + params[:product_id]
  end

  private
  	def comment_params
  		params.require(:comment).permit(:content)
  	end	
end

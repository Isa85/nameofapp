class CommentsController < ApplicationController

	def create
		@product = Product.find(params[:product_id])
		@comment =@product.comments.new(comment_params)
		@comment.user = current_user
		#@coment.save
		#redirect_to product_path(@product)
	end

	def destroy
	end

	private

		def comment_params
			params.require(:comment).permit(:user_id, :body, :rating)
		end

end


class CommentsController < ApplicationController
  before_action :authenticate_model!, only: [:create]
    def create
        @gram = Gram.find_by_id(params[:gram_id])
        return render_not_found if @gram.blank?
        @gram.comments.create(comment_params.merge(model: current_model))
        redirect_to root_path
      end
    
      private

   
 
    
      def comment_params
        params.require(:comment).permit(:message)
      end
end

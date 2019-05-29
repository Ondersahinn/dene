class CommentsController < ApplicationController
  before_action :set_yazilar
  before_action :authenticate_user! 
  
  def create
    @comment= @yazilar.comments.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  def set_yazilar
    @yazilar = Yazilar.find(params[:yazilar_id])
    
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:comment).permit(:icerik,:yazilar_id)
  end
end

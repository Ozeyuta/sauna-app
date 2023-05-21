class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/protos/#{comment.proto.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, proto_id: params[:proto_id])
  end
end

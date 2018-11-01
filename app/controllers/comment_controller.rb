class CommentController < ApplicationController
  def new
  end

      def create
        @gossip = Gossip.find(30)
        puts params[:gossip_id]
        @comment=@gossip.comments.new
        @comment.content = params["content"]
        @comment.save
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comment.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(@gossip)
    end

end

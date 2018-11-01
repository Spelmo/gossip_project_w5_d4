class LikesController < ApplicationController
  def new
  end

  def create
    @gossip = Gossip.find(params[:gossip_id])
    puts params[:gossip_id]
    @comment=@gossip.like.create
    redirect_to gossip_path(@gossip)
  end

  def delete
  end
end

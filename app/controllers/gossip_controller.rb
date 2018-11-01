class GossipController < ApplicationController
 def index
 end

 def new
 end

 def create
   gossip = Gossip.new
   gossip.title = params["title"]
   gossip.content = params["content"]
   gossip.save
   @index = gossip["id"]
   puts @index
 end

 def show
  @id = params["id"]
  @gossip = Gossip.find(@id)
 end

 def edit
   @index = params["id"]
   @gossip = Gossip.find(@index)
end

 def update
    @index = params["id"]
    @gossip = Gossip.find(@index)
    if @gossip.user_id = $current_user
      newpar = params["gossip"]
      @gossip.anonymous_gossiper = newpar["anonymous_gossiper"]
   	  @gossip.title = newpar["title"]
      @gossip.content = newpar["content"]
      @gossip.save
    end
 end


 def destroy
   @index = params["id"]
   @gossip = Gossip.find(@index)
   @gossip.delete
   redirect_to gossip_index_path
 end

end

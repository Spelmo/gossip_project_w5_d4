class GossipController < ApplicationController
 def /index
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

 def edit
 end

 def show
 end

 def update
 end

 def update
 end

 def destroy
 end

end

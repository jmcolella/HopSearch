class HopsController < ApplicationController

  def index
    @hops = Hop.all
  end

  def search
    @hops_to_display = Hop.find_hop(params[:search][:hop].split(" "))

    render "search"
  end

  def show
    @hop = Hop.find_by(id: params[:id])
    @comments = @hop.comments
  end
end

class HopsController < ApplicationController

  def index
    @hops = Hop.all.sort_by { |hop| hop.id }
  end

  def search
    @search_results = Hop.find_hop(params[:search][:hop].split(" "))

    render "search"
  end

  def show
    @hop = Hop.find_by(id: params[:id])
    @comments = @hop.comments
  end
end

class HopsController < ApplicationController

  def index
    @hops = Hop.all
  end

  def search
    binding.pry
  end

  def show
    @hop = Hop.find_by(id: params[:id])
    @comments = @hop.comments
  end
end

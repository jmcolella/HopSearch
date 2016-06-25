class HopsController < ApplicationController

  def index
    @hops = Hop.all
  end
end

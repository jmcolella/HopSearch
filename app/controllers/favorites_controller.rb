class FavoritesController < ApplicationController

  def create
    @hop = Hop.find_by(id: params[:hop_id])
    @user = User.find_by(id: params[:user_id])
    binding.pry
    @favorite.create(hop: @hop, user: params[:user])

    redirect_to hop_path( @hop )
  end


  def destroy

  end
end

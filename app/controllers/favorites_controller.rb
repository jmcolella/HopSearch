class FavoritesController < ApplicationController

  before_action :find_hop, :find_user

  def create
    Favorite.create(hop: @hop, user: @user)

    if request.xhr?
      render json: {action: "/favorites_delete", new_class: "unfavorite-icon", icon_class: "fa-star"}
    else
      redirect_to hop_path( @hop )
    end
  end


  def destroy
    favorite = Favorite.find_by(hop_id: @hop.id, user_id: @user.id)

    favorite.destroy

    if request.xhr?
      render json: {action: "/favorites", new_class: "favorite-icon", icon_class: "fa-star-o"}
    else
      redirect_to hop_path( @hop )
    end
  end

  private

  def find_hop
    @hop = Hop.find_by(id: params[:hop_id])
  end

  def find_user
    @user = User.find_by(id: params[:user_id])
  end
end

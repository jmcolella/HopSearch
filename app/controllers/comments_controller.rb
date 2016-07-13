class CommentsController < ApplicationController

  def new
    @hop = Hop.find_by( id: params[:hop_id] )
  end

  def create
    @comment = Comment.new( comment_params )
    @hop = Hop.find_by( id: params[:hop_id] )

    if @comment.save
      @comment.update_attributes( user: current_user )
      @comment.update_attributes( hop: @hop )
      redirect_to hop_path( @hop )
    else
      # need to work in error handling at this point
      render new
    end
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require( :comments ).permit( :body )
  end
end

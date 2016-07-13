class CommentsController < ApplicationController

  before_action :find_hop
  skip_before_action :find_hop, only: :destroy

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

  def edit
    @comment = Comment.find_by(id: params[:id])
  end

  def update
    binding.pry
  end

  def destroy
  end

  private

  def find_hop
    @hop = Hop.find_by(id: params[:hop_id])
  end

  def comment_params
    params.require( :comments ).permit( :body )
  end

end

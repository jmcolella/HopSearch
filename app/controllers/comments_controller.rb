class CommentsController < ApplicationController

  before_action :find_hop, :find_comment
  skip_before_action :find_comment, only: [:new, :create]

  def new
    if !logged_in?
      redirect_to( root_path )
    end
    @errors = []
  end

  def create
    @comment = Comment.new( comment_params )

    if @comment.save
      @comment.update_attributes( user: current_user, hop: @hop )
      redirect_to hop_path( @hop )
    else
      @errors = @comment.errors.full_messages.push("Try again.")

      render "new"
    end
  end

  def edit
    if !logged_in? && current_user != @comment.user
      redirect_to( root_path )
    end
    @errors = []
  end

  def update

    if @comment.update( comment_params )
      redirect_to hop_path( @hop )
    else
      @errors = @comment.errors.full_messages.push("Try again.")

      render "edit"
    end
  end

  def destroy
    @comment.destroy

    redirect_to hop_path( @hop )
  end

  private

  def find_hop
    @hop = Hop.find_by(id: params[:hop_id])
  end

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require( :comments ).permit( :body )
  end

end

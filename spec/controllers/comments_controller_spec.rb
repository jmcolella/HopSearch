require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  let(:hop) {Hop.create}
  let(:comment) {Comment.create(body:"hello")}

  describe "GET #new" do

    it "assigns a hop as @hop" do
      get :new, {hop_id: hop}
      expect(assigns(:hop)).to eq(hop)
    end

    it "renders the new template" do
      get :new, {hop_id: hop}
      expect(response).to render_template("new")
    end

  end

  describe "POST #create" do
    valid_comment = {body: "Hello"}
    invalid_comment = {body: ""}

    context "with valid comment body" do

      it "creates a new comment in database" do
        expect{
          post :create, hop_id: hop, comments: valid_comment
        }.to change(Comment,:count).by(1)
      end

      it "redirects to the hop show page" do
        post :create, hop_id: hop, comments: valid_comment
        expect(response).to redirect_to(hop)
      end

    end

    context "with invalid comment body" do
      it "does not add a new comment to the database" do
        expect{
          post :create, hop_id: hop, comments: invalid_comment
        }.to_not change(Comment,:count)
      end

      it "renders the new comment page" do
        post :create, hop_id: hop, comments: invalid_comment
        expect(response).to render_template("new")
      end
    end

  end

  describe "GET #edit" do

    it "finds the hop and assigns it as @hop" do
      get :edit, {hop_id: hop, id: comment}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the comment and assigns it as @comment" do
      get :edit, {hop_id: hop, id: comment}
      expect(assigns(:comment)).to eq(comment)
    end

     it "renders the edit comment page" do
      get :edit, {hop_id: hop, id: comment}
      expect(response).to render_template("edit")
    end

  end

  describe "PUT #update" do

    valid_comment = {body: "Goodbye"}
    invalid_comment = {body: ""}

    it "finds the hop and assigns it as @hop" do
      put :edit, {hop_id: hop, id: comment}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the comment and assigns it as @comment" do
      put :edit, {hop_id: hop, id: comment}
      expect(assigns(:comment)).to eq(comment)
    end

    context "with valid update info" do
      it "updates the comment body" do
        put :update, {hop_id: hop, id: comment, comments: valid_comment}
        comment.reload
        expect(comment.body).to eq("Goodbye")
      end

      it "redirects to the hop show page" do
        put :update, {hop_id: hop, id: comment, comments: valid_comment}
        expect(response).to redirect_to(hop)
      end
    end

    context "with invalid update info" do
      it "does not update the comment body" do
        put :update, {hop_id: hop, id: comment, comments: invalid_comment}
        comment.reload
        expect(comment.body).to eq("hello")
      end

      it "renders the comment edit page" do
        put :update, {hop_id: hop, id: comment, comments: invalid_comment}
        expect(response).to render_template("edit")
      end
    end

  end

  describe "DELETE #destroy" do

    it "finds the hop and assigns it as @hop" do
      delete :destroy, {hop_id: hop, id: comment}
      expect(assigns(:hop)).to eq(hop)
    end

    it "finds the comment and assigns it as @comment" do
      delete :destroy, {hop_id: hop, id: comment}
      expect(assigns(:comment)).to eq(comment)
    end

    it "deletes the comment" do
      id = comment.id
      delete :destroy, {hop_id: hop, id: comment}
      expect(Comment.where(id: id)).not_to exist
    end

    it "redirects to the hop show page" do
      delete :destroy, {hop_id: hop, id: comment}
      expect(response).to redirect_to(hop)
    end

  end

end

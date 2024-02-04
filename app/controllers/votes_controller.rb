class VotesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    case params[:vote]
    when "upvote"
      @post.update(score: @post.score + 1)
    when "downvote"
      @post.update(score: @post.score - 1)
    end
    redirect_to @post.forum
  end
end
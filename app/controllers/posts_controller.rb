class PostsController < ApplicationController
  def index
		@posts = Post.all

		# Filters out sensitive title for every fifth Post
		@posts.each_with_index do |post, index|
			post.update!(title: "SPAM") if index % 5 == 0
		end
  end

  def show
  end

  def new
  end

  def edit
  end
end

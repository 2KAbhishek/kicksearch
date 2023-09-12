# frozen_string_literal: true

class SearchController < ApplicationController
  def search
    @results = Post.search(params[:search])
    render turbo_stream: turbo_stream.render(
      'posts',
      partial: 'posts/posts',
      locals: { posts: @results }
    )
  end
end

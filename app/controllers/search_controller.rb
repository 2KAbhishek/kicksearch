class SearchController < ApplicationController
  def search
    @results = Post.search(params[:search])
  end
end

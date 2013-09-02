class HomeController < ApplicationController
  def index
    @blog_posts = BlogPost.all.limit(6)
  end
end

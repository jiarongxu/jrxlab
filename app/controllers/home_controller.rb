class HomeController < ApplicationController
  def index
    @blog_posts = BlogPost.where(:draft => false).limit(6)
  end
end

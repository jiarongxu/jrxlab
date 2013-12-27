class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def tags_array
    tags = ActsAsTaggableOn::Tag.all
    tags_array = Array.new
    tags.each do |tag|
      tags_array << tag.name
    end
    return tags_array
  end

end

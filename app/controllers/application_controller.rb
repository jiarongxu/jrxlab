class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  def tags_array(taggable_type)
    taggings = ActsAsTaggableOn::Tagging.where(:taggable_type => taggable_type).uniq {|tagging| tagging.tag_id}
    tags_array = Array.new
    taggings.each do |tagging|
      tags_array << ActsAsTaggableOn::Tag.find(tagging.tag_id).name
    end
    return tags_array.uniq
  end

end

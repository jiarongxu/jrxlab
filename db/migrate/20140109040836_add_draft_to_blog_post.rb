class AddDraftToBlogPost < ActiveRecord::Migration
  def change
    add_column :blog_posts, :draft, :boolean, :default => false
  end
end

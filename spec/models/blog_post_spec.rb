require 'spec_helper'

describe BlogPost do
	it "should return a date string" do
		blog_post = create(:blog_post)
    expect(blog_post.created_date).to be_an_instance_of(String) 
	end
  
end

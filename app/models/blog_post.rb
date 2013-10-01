class BlogPost < ActiveRecord::Base
	belongs_to :user

	def created_date
    created_at.strftime("%Y-%m-%d")
	end
end

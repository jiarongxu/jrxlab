class Link < ActiveRecord::Base
	belongs_to :user

	acts_as_taggable

	def created_date
		created_at.strftime("%Y-%m-%d")
	end
end

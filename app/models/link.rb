class Link < ActiveRecord::Base
  default_scope order('created_at DESC')
	belongs_to :user

	acts_as_taggable

	def created_date
		created_at.strftime("%Y-%m-%d")
	end
end

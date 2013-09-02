module LinksHelper
	def tagged_with(param)
		if !param.nil?
			return "tagged with " + param
		end
	end
end

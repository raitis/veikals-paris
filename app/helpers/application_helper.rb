module ApplicationHelper
	def set_title(page_title)
		content_for(:title) { page_title }
	end
end

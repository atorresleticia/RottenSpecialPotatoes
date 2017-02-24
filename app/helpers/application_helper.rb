module ApplicationHelper
	def error_tag(model, attribute)
		if model.errors.has_key? attribute
			content_tag :div, model.errors[attribute].first,
			:class => 'error_message'
		end
	end

	def full_title(page_title = '')
	    base_title = "Rotten Special Potatoes"
	    if page_title.empty?
	      base_title
	    else
	      page_title + " | " + base_title
	    end
  end
end

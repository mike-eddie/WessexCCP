module ApplicationHelper

	def sortable(column, title = nil)
	  title ||= column.titleize
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

	def longdate(date)
  		d = Date.parse(date.to_s).strftime("%A %d %B, %Y").to_s
  		return d
	end

	def shortdate(date)
  		d = Date.parse(date.to_s).strftime("%d/%m/%Y").to_s
  		return d
	end
end

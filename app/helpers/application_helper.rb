module ApplicationHelper

	def sortable(column, title = nil)
	  title ||= column.titleize
	  css_class = column == sort_column ? "current #{sort_direction}" : nil
	  direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
	  link_to title, {:sort => column, :direction => direction}, {:class => css_class}
	end

	def longdate(date)
  		d = Date.parse(date.to_s).strftime("%A #{date.day.ordinalize} %B, %Y").to_s #Monday 10th October, 2013
  		return d
	end

	def shortdate(date)
  		d = Date.parse(date.to_s).strftime("%d/%m/%Y").to_s
  		return d
	end

	def ntime(date)
  		d = Time.parse(date.to_s).strftime("%H:%M").to_s
  		return d
	end
end

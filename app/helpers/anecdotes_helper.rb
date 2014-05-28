module AnecdotesHelper
	def full_title(page_title)
    base_title = "Listing anecdotes"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

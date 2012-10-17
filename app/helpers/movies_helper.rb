module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  def sortable(column,title=nil)
    title||=column.titleize
    link_to title, :sort=>column
  end
end

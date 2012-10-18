module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  def sortable(column,title=nil)
    title||=column.titleize
    css_class = column == params[:sort] ? "hilite" : nil
    link_to title, {:sort=>column},{:class=>css_class}
  end
  def set_th_class(column)
    column == params[:sort] ? "hilite" : nil
  end
end

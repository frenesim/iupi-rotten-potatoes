module MoviesHelper
  # Checks if a number is odd:
  def oddness(count)
    count.odd? ?  "odd" :  "even"
  end
  
  def sortable(column,title=nil,css_id)
    title||=column.titleize
    link_to title, {:sort=>column},{:id=>css_id}
  end
  
  def set_th_class(column)
    column == params[:sort] ? "hilite" : nil
  end
end

module FacebookgetHelper

  def show_results
      result_set = content_tag(:h1, @term.term)
    (0..@result["data"].length - 1).each do |n| 
    
      result_set += content_tag :br
      result_set += "#{@result["data"][n]["message"]}"
      result_set += content_tag :br
      result_set +=  image_tag(image_path("#{@result["data"][n]["picture"]}"))
      result_set += content_tag :br
      result_set +=  "========================"
     
    end
     content_tag :div, result_set, :class => "results"
  end
end
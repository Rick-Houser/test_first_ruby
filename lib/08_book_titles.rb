class Book

  def title=(title)
    array = title.split
    array.each do |word|
      unless ['a', 'an', 'and', 'in', 'of', 'the'].include?(word)
        word.capitalize!
      end
    end
    if array.size > 0
      array[0].capitalize!
    end
    @title = array.join(" ")
  end

  def title
    @title
  end

end
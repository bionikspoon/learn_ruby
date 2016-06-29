def titleize text
  capitalize = lambda do |word, i|
    skip = ('and the over in of a an'.split.include?(word) and not i == 0)
    skip ? word : word.capitalize
  end

  text.split(' ').map.with_index(&capitalize).join(' ')
end

class Book
  attr_accessor :title

  def title=(value)
    @title = titleize(value)
  end
end

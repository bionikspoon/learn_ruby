def echo text
  text
end

def shout text
  text.upcase
end

def repeat text, count=2
  ([text] * count).join(' ')
end

def start_of_word text, length
  text[0, length]
end

def first_word text
  text.split(' ').first
end

def titleize text
  capitalize = lambda do |word, i|
    skip = ('and the over'.split.include?(word) and not i == 0)
    skip ? word : word.capitalize
  end

  text.split(' ').map.with_index(&capitalize).join(' ')
end
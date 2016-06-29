def split word
  vowels = 'aeiouy'
  suffix = 'ay'

  if word.downcase == 'a'
    return word, '', ''
  end

  word.each_char.with_index do |char, i|
    if vowels.include? char.downcase
      if i == 0
        return word, '', suffix
      end
      if char.downcase == 'u' and word.downcase[i-1] == 'q'
        i += 1
      end
      return word[i..-1], word[0..i-1], suffix
    end
  end
  [word, '', '']
end

def translate_word word
  letters = 'abcdefghijklmnopqrstuvwxyz'
  if word.each_char.all? { |c| not letters.include? c.downcase }
    return word
  end
  prefix = word.each_char.take_while { |c| not letters.include? c.downcase }
  suffix = word.reverse.each_char.take_while { |c| not letters.include? c.downcase }.reverse
  word = word.each_char.drop_while { |c| not letters.include? c.downcase }.take_while { |c| letters.include? c.downcase }.join
  translated = split(word).join
  cased = (word.length >1 and word[0].upcase == word[0]) ? translated.capitalize : translated
  [prefix, cased, suffix].join
end

def translate text
  text.split.map { |word| translate_word word }.join(' ')
end
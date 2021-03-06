class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    similarity = 0
    input_1 = self.downcase.delete('^a-z').split('')
    input_2 = str.downcase.delete('^a-z').split('')
    if (self).scan(/^[^aeiouy]+$|^$|(.)\1{2,}|q([^u])/i) != [] || (str).scan(/^[^aeiouy]+$|^$|(.)\1{2,}|q([^u])/i) != []
      result = 'not a word'
    else
      if input_1.reverse == input_2
        result = 'palindromes'
        similarity = input_1.length
      elsif input_1.sort == input_2.sort
        result = 'anagrams'
        similarity = input_1.length
      elsif
        input_1.each do |letter1|
          if input_2.any? {|letter2| letter2 == letter1 }
            result = 'partial anagrams'
            similarity += 1
          end
        end
      end
    end
    finals = [result, similarity]
  end
end

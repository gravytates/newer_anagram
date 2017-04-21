class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    input_1 = self.downcase.delete('^a-z').split('')
    input_2 = str.downcase.delete('^a-z').split('')
    if (self||str).scan(/^[^aeiouyAEIOUY]+$|^$|(.)\1{2,}|q([^u])/) != []
      result = 'not a word'
    else
      if input_1.reverse == input_2
        result = 'palindromes'
      elsif input_1.sort == input_2.sort
        result = 'anagrams'
      elsif
        input_1.each do |letter1|
          if input_2.any? {|letter2| letter2 == letter1 }
            result = 'partial anagrams'
          end
        end
      end
    end
    result
  end
end

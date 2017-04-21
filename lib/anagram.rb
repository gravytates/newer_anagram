class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    input_1 = self.downcase.delete('^a-z').split('').sort
    input_2 = str.downcase.delete('^a-z').split('').sort
    if self.scan(/^[^aeiouyAEIOUY]+$|^$|(.)\1{2,}/) != [] || str.scan(/^[^aeiouyAEIOUY]+$|^$|(.)\1{2,}/) != []
      result = 'not a word'
    else
      if self.downcase.delete('^a-z').reverse == str.downcase.delete('^a-z')
        result = 'palindromes'
      elsif input_1 == input_2
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

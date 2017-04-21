class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    input_1 = self.downcase.delete('^a-z').split('').sort
    input_2 = str.downcase.delete('^a-z').split('').sort
    if self.scan(/^[^aeiouyAEIOUY]+$/) != [] || str.scan(/^[^aeiouyAEIOUY]+$/) != [] || self.scan(/^$/) != [] || str.scan(/^$/) != []
      result = 'not a word'
    else
      if self.downcase.delete('^a-z').reverse == str.downcase.delete('^a-z')
        result = 'palindromes'
      elsif input_1 == input_2
        result = 'anagrams'
      elsif
        input_1.each do |aletter|
          if input_2.any? {|bletter| bletter == aletter }
            result = 'partial anagrams'
          end
        end
      end
    end
    result
  end
end

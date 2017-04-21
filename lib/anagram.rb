class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    aa = self.downcase.delete('^a-z').split('').sort
    bb = str.downcase.delete('^a-z').split('').sort
    if self.scan(/^[^aeiouy]+$/) != [] || str.scan(/^[^aeiouy]+$/) != []
      result = 'not a word'
    else
      if self.downcase.delete('^a-z').reverse == str.downcase.delete('^a-z')
        result = 'palindromes'
      elsif aa == bb
        result = 'anagrams'
      elsif
        aa.each do |aletter|
          if bb.any? {|bletter| bletter == aletter }
            result = 'partial anagrams'
          end
        end
      end
    end
    result
  end
end

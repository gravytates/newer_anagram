class String
  define_method(:anagram) do |str|
    result = 'antigrams'
    input_1 = []
    input_2 = []
    aa = self.downcase.split('').sort
    bb = str.downcase.split('').sort
    input_1.push(aa)
    input_2.push(bb)
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



# if str.length > self.length
#   str.slice(self)
# else
#   self.slice(str)

# class String
#   define_method(:anagram) do |str|
#     letters = self.downcase.split("")
#     argument_letters = str.downcase.split("")
#     result = false
#     if self.downcase.delete("^a-z").reverse == str.downcase.delete("^a-z")
#       result = 'palindrome'
#     elsif letters.each do |aletter|
#       argument_letters.each_with_index do |bletter, index|
#         if bletter.include?(aletter)
#           result = true
#         else
#           result = false
#         end
#       end
#     end
#     end
#     result
#   end
# end

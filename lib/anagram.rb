class String
  define_method(:anagram) do |str|
    result = false
    aa = self.downcase.split('').sort
    bb = str.downcase.split('').sort
    if self.downcase.delete('^a-z').reverse == str.downcase.delete('^a-z')
      result = 'palindrome'
    elsif aa == bb
      result = 'anagram'
    elsif aa.each do |aletter|
# binding.pry
      if bb.any? {|bletter| bletter == aletter }
        result = 'partial anagram!'
      end
    end
    end
    result
  end
end

# elsif array1.each do |aletter|
#   if array2.any?(aletter)
#     result = 'partial anagram!'
#   else
#     result = "antigram"
#   end
# end

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

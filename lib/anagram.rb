class String
  define_method(:anagram) do |str|
    # letters = self.downcase.split("")
    # argument_letters = str.downcase.split("")
    result = false
    if self.downcase.delete("^a-z").reverse == str.downcase.delete("^a-z")
      result = 'palindrome'
    elsif self.downcase.split('').sort == str.downcase.split('').sort
        result = true
    end
    result
  end
end

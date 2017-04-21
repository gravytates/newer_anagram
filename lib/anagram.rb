class String
  define_method(:anagram) do |str|
    letters = self.downcase.split("")
    argument_letters = str.downcase.split("")
    result = false
    letters.each do |aletter|
      argument_letters.each_with_index do |bletter, index|
        if bletter.include?(aletter)
          result = true
        end
      end
    end
    result
  end
end

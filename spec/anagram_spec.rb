require('rspec')
require('anagram')

describe('String#anagram') do
  it('check if two inputs are anagrams') do
    expect('ruby'.anagram('bury')).to(eq(['anagrams', 4]))
  end

  it('check if two inputs are anagrams, despite case differences') do
    expect('Ruby'.anagram('BurY')).to(eq(['anagrams', 4]))
  end

  it('check if two inputs are anagrams, and also if they are palindromes') do
    expect('leper'.anagram('repel')).to(eq(['palindromes', 5]))
  end

  it('check if two inputs are asymmetric palindromes between the two inputs are false and also check that partial matches are false as anagrams') do
    expect('lepers'.anagram('repel')).to(eq(['partial anagrams', 5]))
  end

  it('check if two inputs are partial anagrams') do
    expect('hello'.anagram('hebbo')).to(eq(['partial anagrams', 3]))
  end

  it('check if input consonants are words') do
    expect('zhk'.anagram('zhk')).to(eq(['not a word', 0]))
  end

  it('check if input non-letter characters are words') do
    expect('!@#'.anagram('!@#')).to(eq(['not a word', 0]))
  end

  it('check if two inputs are antigrams') do
    expect('hell'.anagram('yoyo')).to(eq(['antigrams', 0]))
  end

  it('check if multiple words can evaluate as anagrams') do
    expect('how fun!'.anagram('wuf hon')).to(eq(['anagrams', 6]))
  end

  it('check if multiple words can evaluate as anagrams') do
    expect('hi yo!'.anagram('da bus')).to(eq(['antigrams', 0]))
  end

  it('check if multiple words can evaluate as anagrams') do
    expect('hey there!'.anagram('hello')).to(eq(['partial anagrams', 5]))
  end

  it('check if two inputs are a words despite title case differences') do
    expect('CASE'.anagram('asec')).to(eq(['anagrams', 4]))
  end

  it('check if two inputs present') do
    expect(''.anagram('')).to(eq(['not a word', 0]))
  end

  it('check if any character is repeated at least 3 times or more to determine if not a word') do
    expect('aaa'.anagram('aaa')).to(eq(['not a word', 0]))
  end

  it('check if any character is repeated at least 3 times or more to determine if not a word') do
    expect('qant'.anagram('qeep up')).to(eq(['not a word', 0]))
  end
end

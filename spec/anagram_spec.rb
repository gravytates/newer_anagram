require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it('check if two inputs are anagrams') do
    expect('ruby'.anagram('bury')).to(eq('anagrams'))
  end

  it('check if two inputs are anagrams, despite case differences') do
    expect('Ruby'.anagram('BurY')).to(eq('anagrams'))
  end

  it('check if two inputs are anagrams, and also if they are palindromes') do
    expect('leper'.anagram('repel')).to(eq('palindromes'))
  end

  it('check if two inputs are asymmetric palindromes between the two inputs are false and also check that partial matches are false as anagrams') do
    expect('lepers'.anagram('repel')).to(eq('partial anagrams'))
  end

  it('check if two inputs are partial anagrams') do
    expect('hello'.anagram('hebbo')).to(eq('partial anagrams'))
  end

  it('check if input consonants are words') do
    expect('zhk'.anagram('zhk')).to(eq('not a word'))
  end

  it('check if input non-letter characters are words') do
    expect('!@#'.anagram('!@#')).to(eq('not a word'))
  end

  it('check if two inputs are antigrams') do
    expect('hell'.anagram('yoyo')).to(eq('antigrams'))
  end
end

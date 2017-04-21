require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it('check if two inputs are anagrams') do
    expect('ruby'.anagram('bury')).to(eq('anagram'))
  end

  it('check if two inputs are anagrams, despite case differences') do
    expect('Ruby'.anagram('BurY')).to(eq('anagram'))
  end

  it('check if two inputs are anagrams, and also if they are palindromes') do
    expect('leper'.anagram('repel')).to(eq('palindrome'))
  end

  it('check if two inputs are asymmetric palindromes between the two inputs are false and also check that partial matches are false as anagrams') do
    expect('lepers'.anagram('repel')).to(eq('partial anagram'))
  end

  it('check if two inputs are partial anagrams') do
    expect('hello'.anagram('hebbo')).to(eq('partial anagram'))
  end

  it('check if inputs are words') do
    expect('zhk'.anagram('zhk')).to(eq('not a word'))
  end

  # it('check if two inputs are antigrams') do
  #   expect('hell'.anagram('yoyo')).to(eq('antigram'))
  # end
end

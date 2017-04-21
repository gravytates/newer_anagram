require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it('check if two inputs are anagrams') do
    expect('ruby'.anagram('bury')).to(eq(true))
  end

  it('check if two inputs are anagrams, despite case differences') do
    expect('Ruby'.anagram('BurY')).to(eq(true))
  end

  it('check if two inputs are anagrams, and also if they are palindromes') do
    expect('leper'.anagram('repel')).to(eq('palindrome'))
  end

  it('check if two inputs are anagrams, and also if they are palindromes') do
    expect('lepers'.anagram('repel')).to(eq(false))
  end

  # it('check if two inputs are antigrams') do
  #   expect('hi'.anagram('bye')).to(eq('antigram'))
  # end
end

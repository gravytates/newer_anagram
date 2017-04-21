require('rspec')
require('anagram')
require('pry')

describe('String#anagram') do
  it('check if two inputs are anagrams') do
    expect('ruby'.anagram('bury')).to(eq(true))
  end
end

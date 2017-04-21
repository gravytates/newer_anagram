require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('processes user entries and evaluates whether strings are anagrams, partial anagrams, antigrams or palindromes') do
    visit('/')
    fill_in('input_one', :with => 'leep')
    fill_in('input_two', :with => 'pele')

    click_button('Anagrize!')
    expect(page).to have_content('anagrams')
  end
end

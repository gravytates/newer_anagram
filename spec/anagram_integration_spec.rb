require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the anagram path', {:type => :feature}) do
  it('processes user entries and evaluates two words as anagrams') do
    visit('/')
    fill_in('input_one', :with => 'leep')
    fill_in('input_two', :with => 'pele')

    click_button('Anagrize!')
    expect(page).to have_content('anagrams')
  end

  it('processes user entries and evaluates two words as antigrams') do
    visit('/')
    fill_in('input_one', :with => 'leep')
    fill_in('input_two', :with => 'curt')

    click_button('Anagrize!')
    expect(page).to have_content('antigrams')
  end

  it('processes user entries and evaluates two words as partial anagrams') do
    visit('/')
    fill_in('input_one', :with => 'Fair')
    fill_in('input_two', :with => 'Freak')

    click_button('Anagrize!')
    expect(page).to have_content('partial anagrams')
  end

  it('processes user entries and evaluates two words as palindromes') do
    visit('/')
    fill_in('input_one', :with => 'Leper')
    fill_in('input_two', :with => 'repel')

    click_button('Anagrize!')
    expect(page).to have_content('palindromes')
  end

  it('processes user entries and evaluates if a non-word is detected') do
    visit('/')
    fill_in('input_one', :with => 'zkh')
    fill_in('input_two', :with => 'zkh')

    click_button('Anagrize!')
    expect(page).to have_content('not a word')
  end

  it('processes user entries and evaluates if multiple words are anagrams') do
    visit('/')
    fill_in('input_one', :with => 'lepers creepers')
    fill_in('input_two', :with => 'repels perserec')

    click_button('Anagrize!')
    expect(page).to have_content('anagrams')
      expect(page).to have_content('14 matching letters')
  end
end

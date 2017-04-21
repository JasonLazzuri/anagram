require('capybara/rspec')
require('./app.rb')
Capybara.app = Sinatra::Application
set(:show_execptions, false)

describe('anagram path', {:type => :feature}) do
  it ('will decide if a word/words are anagrams or not') do
  visit('/')
  fill_in('words', :with => 'ruby Bury')
  click_button('submit')
  expect(page).to have_content("These words are anagrams")
  end
end

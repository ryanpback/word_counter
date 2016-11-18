require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('word_count_output path', {:type => :feature}) do
  it('displays the number of words in the string') do
    visit('/')
    fill_in('user_string', :with => 'hello there')
    fill_in('word_select', :with => 'hello')
    choose('select', :id => 'exact_select')
    click_button('Find Match')
    expect(page).to have_content('1')
  end
end

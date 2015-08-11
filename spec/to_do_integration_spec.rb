require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the to do list path', {:type => :feature}) do
  it('processes the user entry and add it to a list of things to do') do
    visit('/')
    fill_in("description", :with => "eat an apple")
    click_button('Add it!!')
    expect(page).to have_content("eat an apple")
  end
end

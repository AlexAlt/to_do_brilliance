# I want the user to see a list of lists DONE
# I want the user to add a list to the list of lists DONE
# I want the user to see the tasks of a list
# I want the user to add tasks to a specific list
require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adds a list to the home page', {:type => :feature}) do
  it('processes the user entry and adds a new list') do
    visit('/')
    fill_in("name", :with => "groceries")
    click_button('Add it!!')
    expect(page).to have_content("Success!")
  end
end
# describe('displays the tasks of one list') do
#   it('process the user entry and adds a new task') do
#     test_list = List.new({:name => "groceries", :id => test_list.id})
#     test_list.save()
#     test_task = Task.new({:description => "eggs", :list_id => test_list.id()})
#     test_task.save()
#     visit('/lists')
#     expect(page).to have_content("eggs")
#   end
# end

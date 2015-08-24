# I want the user to see a list of lists DONE
# I want the user to add a list to the list of lists DONE
# I want the user to see the tasks of a list
# I want the user to add tasks to a specific list
require('capybara/rspec')
require('./app')
require('launchy')
require('spec_helper')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

# describe('adds a list to the home page', {:type => :feature}) do
#   it('processes the user entry and adds a new list') do
#     visit('/')
#     fill_in("name", :with => "groceries")
#     click_button('Add it!!')
#     expect(page).to have_content("Success!")
#   end
# end
#
# describe('seeing details for specific list', {:type => :feature}) do
#   it('dispays the tasks of one list') do
#     test_list = List.new({:name => "groceries", :id => nil})
#     test_list.save()
#     test_task = Task.new({:description => "eggs", :list_id => test_list.id()})
#     test_task.save()
#     visit('/')
#     click_link("groceries")
#     expect(page).to have_content("eggs")
#   end
# end
#
# describe('adding a task to a list', {:type => :feature}) do
#   it('adds a task to a list') do
#     test_list = List.new({:name => 'groceries', :id => nil})
#     test_list.save()
#     visit("/lists/#{test_list.id()}")
#     #make sure to use double quotes with path names/string interpolation
#     fill_in("description", {:with => 'eggs'})
#     click_button('Add it!!')
#     expect(page).to have_content("eggs")
#   end
end

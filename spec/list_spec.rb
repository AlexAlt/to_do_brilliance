require('spec_helper')


describe(List) do

  # describe('.all') do
  #   it('starts off with no lists') do
  #     expect(List.all()).to(eq([]))
  #   end
  # end
  #
  # describe("#name") do
  #   it("tells you its name") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     expect(list.name()).to(eq("Epicodus stuff"))
  #   end
  # end
  #
  # describe("#id") do
  #   it("sets its ID when you save it") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     list.save()
  #     expect(list.id()).to(be_an_instance_of(Fixnum))
  #   end
  # end
  #
  # describe("#save") do
  #   it("lets you save lists to the database") do
  #     list = List.new({:name => "Epicodus stuff", :id => nil})
  #     list.save()
  #     expect(List.all()).to(eq([list]))
  #   end
  # end
  #
  # describe("#==") do
  #   it("is the same list if it has the same name") do
  #     list1 = List.new({:name => "Epicodus stuff", :id => nil})
  #     list2 = List.new({:name => "Epicodus stuff", :id => nil})
  #     expect(list1).to(eq(list2))
  #   end
  # end
  #
  # describe('#tasks') do
  #   it('returns all of the tasks in the list') do
  #     list = List.new({:name => "Epicodus Stuff", :id => nil})
  #     list.save()
  #     expect(list.tasks()).to(eq([]))
  #   end
  # end
  #
  #
  # describe('#add_tasks') do
  #   it('adds task to list') do
  #     test_list = List.new({:name => 'Epicodus stuff', :id => 2})
  #     test_list.save()
  #     test_task = Task.new({:description => "learn SQL", :list_id => nil})
  #     test_task.save()
  #     test_list.add_tasks(test_task)
  #     expect(test_list.tasks()).to(eq([test_task]))
  #   end
  # end
  # describe('.find') do
  #   it('finds the list by its ID') do
  #   test_list = List.new(:name => "epicodus", :id => nil)
  #   test_list.save()
  #   test_list2 = List.new(:name => "home", :id => nil)
  #   test_list2.save()
  #   expect(List.find(test_list2.id)).to(eq(test_list2))
  #   end
  # end

end

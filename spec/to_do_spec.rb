require('rspec')
require('to_do')



describe(Task) do
  before() do
    Task.clear()
  end

  describe('#description') do
    it('lets you add give a description of a task') do
      test_task = Task.new('put your pants on')
      expect(test_task.description()).to(eq('put your pants on'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Task.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a task to a list of saved tasks') do
      test_task = Task.new("put your hat on")
      test_task.save()
      expect(Task.all()).to(eq([test_task]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved tasks') do
      Task.new("put your socks on").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end

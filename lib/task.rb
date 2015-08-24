class Task
  # attr_reader(:id, :description, :list_id)
  # attr_writer(:list_id)
  #
  # define_method(:initialize) do |attributes|
  #   @description = attributes.fetch(:description)
  #   @list_id = attributes[:list_id]
  #   @id = attributes[:id]
  # end
  #
  # define_method(:description) do
  #   @description
  # end
  #
  # define_singleton_method(:all) do
  #   returned_tasks = DB.exec('SELECT * FROM tasks;')
  #   tasks = []
  #   returned_tasks.each() do |task|
  #     id = task.fetch('id').to_i()
  #     description = task.fetch('description')
  #     list_id = task.fetch('list_id').to_i()
  #     tasks.push(Task.new({:description => description, :list_id => list_id, :id => id}))
  #   end
  #   tasks
  # end
  #
  # define_method(:save) do
  #   if ! @list_id
  #     @list_id = "NULL"
  #   end
  #   result = DB.exec("INSERT INTO tasks (description, list_id) VALUES ('#{@description}', #{@list_id}) RETURNING id;")
  #   @id = result.first().fetch("id").to_i()
  # end
  #
  # # define_singleton_method(:clear) do
  # #   @@all_tasks = []
  # # end
  #
  # define_method(:==) do |another_task|
  #   self.description().==(another_task.description()).&(self.list_id().==(another_task.list_id())).&(self.id().==(another_task.id()))
  # end
end

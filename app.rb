require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/task')
require('./lib/list')
require('pg')
require('pry')

get('/') do
  @lists = List.all()
  @tasks = Task.all()
  erb(:index)
end

post('/lists') do
  name = params.fetch("name")
  list = List.new({:name => name, :id => nil})
  list.save()
  @lists = List.all()
  redirect("/")
end

post('/tasks') do
  @lists = List.all()
  description = params.fetch("description")
  due_date = params.fetch("due_date")
  list_id = params.fetch("list_id")
  task = Task.new({:description => description, :list_id => list_id, :done => false, :due_date => due_date, :id => nil})
  task.save()
  @tasks = Task.all()
  redirect("/")
end

# delete('/tasks') do
#   @tasks = Task.all().destroy()
#   redirect("/")
# end

get('/lists/:id') do
  @list = List.find(params.fetch("id").to_i())
  erb(:list_edit)
end

post('/lists/:id/new') do
  @lists = List.all()
  description = params.fetch("description")
  due_date = params.fetch("due_date")
  list_id = params.fetch("id").to_i()
  task = Task.new({:description => description, :list_id => list_id, :done => false, :due_date => due_date, :id => nil})
  task.save()
  @tasks = Task.all()
  redirect("/lists/#{list_id}")
end

patch('/lists/:id') do
  name = params.fetch("name")
  id = params.fetch("id").to_i()
  @list = List.find(id)
  @list.update({:name => name})
  redirect("/lists/#{id}")
end

delete('/lists/:id') do
  id = params.fetch("id").to_i()
  @list = List.find(id)
  @list.destroy()
  redirect("/")
end

get('/tasks/:id/edit') do
  @task = Task.find(params.fetch("id").to_i())
  @lists = List.all()
  erb(:task_edit)
end

patch('/tasks/:id') do
  description = params.fetch("description")
  @task = Task.find(params.fetch("id").to_i())
  @task.update({:description => description})
  @tasks = Task.all()
  redirect("/")
end

delete('/tasks/:id') do
  id = params.fetch("id").to_i()
  @task = Task.find(id)
  @task.destroy()
  redirect("/")
end

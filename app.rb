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
  erb(:to_do_success)
end

get('/lists/:id') do
  @list = List.find(params.fetch("id").to_i())
  erb(:list_edit)
end

patch ('/lists/:id') do
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
  erb(:task_edit)
end

patch('/tasks/:id') do
  description = params.fetch("description")
  @task = Task.find(params.fetch("id").to_i())
  @task.update({:description => description})
  @tasks = Task.all()
  redirect("/")
end

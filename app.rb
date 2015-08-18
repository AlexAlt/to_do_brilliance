require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/task')
require('./lib/list')
require('pg')

DB = PG.connect({:dbname => "to_do_test"})

get('/') do
  @lists = List.all()
  erb(:index)
end

post('/lists') do
  name = params.fetch("name")
  list = List.new({:name => name, :id => nil})
  list.save()
  @lists = List.all()
  erb(:to_do_success)
end

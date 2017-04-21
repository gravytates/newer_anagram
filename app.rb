require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @input_one = params.fetch('input_one')
  @input_two = params.fetch('input_two')
  @result = @input_one.anagram(@input_two)
  erb(:result)
end

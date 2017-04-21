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
  @similarity = @similarity
  finals = @input_one.anagram(@input_two)
  @result = finals[0]
  @similarity = finals[1]
  erb(:result)
end

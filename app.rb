require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/form') do
  @word = params.fetch('words').anagram()
  erb(:result)
end

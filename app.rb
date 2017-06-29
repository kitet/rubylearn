require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')

get('/') do
	erb(:index)
end

get('/title') do
	@title=params.fetch('title')
	erb(:title)
end
require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_finder') do
  @user_input = params.fetch('user_string')
  @user_word = params.fetch('word_select').downcase()
  @user_search = params.fetch('select')
  @result = params.fetch('user_string').word_count(@user_word, @user_search)
  erb(:word_count_output)
end

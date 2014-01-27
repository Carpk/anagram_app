get '/' do
  # Look in app/views/index.erb
  @answers = []
  erb :index
end

post '/word_search' do
  #word = params[:word_search]
  @answers = Word.anagrams(params[:user_word])
  erb :index
end
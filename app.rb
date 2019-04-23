require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    @all = []
    erb :bookmarks
  end

  run! if app_file == $0
end

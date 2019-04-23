require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmark_list = Bookmarks.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end

require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb :'bookmarks/index'
  end

  run! if app_file == $0
end

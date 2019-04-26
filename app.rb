require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get '/bookmarks' do
    @bookmark_list = Bookmark.all
    erb :'bookmarks/index'
  end

  get '/bookmarks/new' do
    erb :'bookmarks/new'
  end

  post '/bookmarks' do
    Bookmark.create(url: params['url'], title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

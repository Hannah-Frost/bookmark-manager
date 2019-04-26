require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'displays all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');")

      bookmark_list = Bookmark.all

      expect(bookmark_list).to include "http://www.makersacademy.com"
      expect(bookmark_list).to include "http://www.destroyallsoftware.com"
      expect(bookmark_list).to include "http://www.google.com"
    end
  end
  describe '#create' do
    it 'adds a bookmark to the database' do
      Bookmark.create(url: 'http://www.makersacademy.com')
      expect(Bookmark.all).to include 'http://www.makersacademy.com'
    end
  end
end

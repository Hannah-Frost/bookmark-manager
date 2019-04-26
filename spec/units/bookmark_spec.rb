require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '#all' do
    it 'displays all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")

      bookmark_list = Bookmark.all

      expect(bookmark_list.length).to eq 3
      expect(bookmark_list.first).to be_a Bookmark
      expect(bookmark_list.first.id).to eq bookmark.id
      expect(bookmark_list.first.title).to eq "Makers Academy"
      expect(bookmark_list.first.url).to eq "http://www.makersacademy.com"
    end
  end
  describe '#create' do
    it 'adds a bookmark to the database' do
      bookmark = Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq bookmark.id
      expect(bookmark.url).to eq 'http://www.makersacademy.com'
      expect(bookmark.title).to eq 'Makers Academy'
    end
  end
end

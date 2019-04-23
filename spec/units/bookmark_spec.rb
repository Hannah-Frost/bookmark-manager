require 'bookmark'

describe Bookmark do
  describe '#all' do
    it 'displays all bookmarks' do
      bookmark_list = Bookmark.all
      expect(bookmark_list).to eq ["http://www.makersacademy.com", "http://www.twitter.com"]
    end
  end
end

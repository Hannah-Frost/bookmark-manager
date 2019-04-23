require 'bookmarks'

describe Bookmarks do
  describe '#all' do
    it 'displays all bookmarks' do
      bookmark_list = Bookmarks.all
      expect(bookmark_list).to eq ["http://www.makersacademy.com", "http://www.twitter.com"]
    end
  end
end

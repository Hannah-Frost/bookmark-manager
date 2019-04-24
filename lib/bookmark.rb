require 'pg'

class Bookmark
  attr_reader :all

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec ('SELECT * FROM bookmarks');
    result.map { |bookmark| bookmark['url'] }
  end
end

#Class methods are methods that are called on a class.
#Instance methods are methods that are called on an instance of a class.

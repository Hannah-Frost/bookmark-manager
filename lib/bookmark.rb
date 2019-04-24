require 'pg'

class Bookmark
  attr_reader :all

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    result = connection.exec ('SELECT * FROM bookmarks');
    result.map { |bookmark| bookmark['url'] }
  end
end

#Class methods are methods that are called on a class.
#Instance methods are methods that are called on an instance of a class.

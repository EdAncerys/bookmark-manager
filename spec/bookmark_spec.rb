require 'bookmark'

describe Bookmark do
  
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
  
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end

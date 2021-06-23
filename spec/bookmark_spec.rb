require './lib/bookmark.rb'
describe Bookmark do
  describe '.all' do
    it 'shows bookmark' do
      bookmark = Bookmark.all
      expect(bookmark).to include("http://www.makersacademy.com")
      expect(bookmark).to include("http://www.destroyallsoftware.com")
      expect(bookmark).to include("http://www.google.com")
    end
  end
end

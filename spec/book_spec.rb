require_relative 'spec_helper'

describe Book do
  book = Book.new('2018-01-01', 'Penguin', 'good')
  book.genre = 'Horror'
  book.author = 'Stephen King'
  book.label = 'Favorites'

  context 'check if book is added correctly' do
    it 'should be able to add book' do
      expect(book.genre).to eq('Horror')
      expect(book.author).to eq('Stephen King')
      expect(book.label).to eq('Favorites')
      expect(book.publisher).to eq('Penguin')
      expect(book.publish_date).to eq('2018-01-01')
    end
  end

  context 'check if book is archived correctly' do
    it 'should not be able to archive book if cover_state = good' do
      book.move_to_archive

      expect(book.archived).to eq(false)
    end

    it 'should be able to archive book if cover_state = bad' do
      book.cover_state = 'bad'
      book.move_to_archive

      expect(book.archived).to eq(true)
    end

    it 'should archive book if publish_date > 10 years' do
      book.publish_date = '2008-01-01'
      book.move_to_archive

      expect(book.archived).to eq(true)
    end
  end
end

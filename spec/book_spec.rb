require_relative 'spec_helper'

describe Book do
  context 'check if book is added correctly' do
    it 'should be able to add book' do
      book = Book.new('2018-01-01', 'good')
      book.genre = 'Horror'
      book.author = 'Stephen King'
      book.label = 'Penguin'

      expect(book.genre).to eq('Horror')
      expect(book.author).to eq('Stephen King')
      expect(book.label).to eq('Penguin')
      expect(book.publish_date).to eq('2018-01-01')
      expect(book.archived).to eq(false)
    end
  end

  context 'check if book is archived correctly' do
    it 'should be able to archive book' do
      book = Book.new('2000-01-01', 'bad')
      book.move_to_archive

      expect(book.archived).to eq(true)
    end
  end
end

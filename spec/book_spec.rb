require_relative 'spec_helper'

describe 'Testing book' do
  context 'Creating a new book' do
    book = Book.new('Publisher1', 'good', 'action', 'Author', 'Track', '1990-11-11')

    it 'Check if is an instance' do
      expect(book).to be_instance_of(Book)
    end

    it "Publisher of the created book should be 'Publisher1'" do
      expect(book.publisher).to eql 'Publisher1'
    end

    it "Label of the created book should be 'Track'" do
      expect(book.label).to eql 'Track'
    end
  end
end

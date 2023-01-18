require 'json'
require './src/classes/book'

module BooksPersistor
  SOURCE = './database/data/books.json'.freeze

  def self.read_from_file(labels)
    return [] unless File.exist?(SOURCE)

    ruby_books = JSON.parse(File.read(SOURCE))
    ruby_books.map { |book| json_to_ruby(book, labels) }
  end

  def self.write_to_file(books)
    json_books = books.map { |book| ruby_to_json(book) }
    File.write(SOURCE, JSON.pretty_generate(json_books))
  end

  def self.ruby_to_json(book)
    {
      'id' => book.id,
      'genre_id' => book.genre,
      'author_id' => book.author,
      'label_id' => book.label.id,
      'publish_date' => book.publish_date,
      'archived' => book.archived,
      'publisher' => book.publisher,
      'cover_state' => book.cover_state
    }
  end

  def self.json_to_ruby(book, labels)
    new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'])
    new_book.archived = book['archived']
    new_book.label = book['label_id']
    new_book.genre = book['genre_id']
    new_book.label = labels.find { |label| label.id == book['label_id'] }
    new_book
  end
end

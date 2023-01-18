require 'json'
require './src/classes/book'

module BooksPersistor
  SOURCE = './database/data/books.json'.freeze

  # delete de underline from _authors and _genres parameters when methods to add genre and author objects are available
  def self.read_from_file(labels, _authors, _genres)
    return [] unless File.exist?(SOURCE)

    ruby_books = JSON.parse(File.read(SOURCE))
    ruby_books.map { |book| json_to_ruby(book, labels, authors, genres) }
  end

  def self.write_to_file(books)
    json_books = books.map { |book| ruby_to_json(book) }
    File.write(SOURCE, JSON.pretty_generate(json_books))
  end

  def self.ruby_to_json(book)
    {
      'id' => book.id,
      # uncomment the following lines when methods to add genre and author objects are available
      # 'genre_id' => book.genre.id,
      # 'author_id' => book.author.id,
      # ----------------
      # then, delete the following lines
      'genre_id' => book.genre,
      'author_id' => book.author,
      # ----------------
      'label_id' => book.label.id,
      'publish_date' => book.publish_date,
      'archived' => book.archived,
      'publisher' => book.publisher,
      'cover_state' => book.cover_state
    }
  end

  # delete de underline from _authors and _genres parameters when methods to add genre and author objects are available
  def self.json_to_ruby(book, labels, _authors, _genres)
    new_book = Book.new(book['publish_date'], book['publisher'], book['cover_state'])
    new_book.archived = book['archived']
    # uncomment the following lines when methods to add genre and author objects are available
    # new_book.label = labels.find { |label| label.id == book['label_id'] }
    # new_book.genre = genres.find { |genre| genre.id == book['genre_id'] }
    # ----------------
    # then, delete the following lines
    new_book.label = book['label_id']
    new_book.genre = book['genre_id']
    # ----------------
    new_book.label = labels.find { |label| label.id == book['label_id'] }
    new_book
  end
end

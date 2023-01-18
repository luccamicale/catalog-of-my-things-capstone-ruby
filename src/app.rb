require './src/classes/label'
require './src/classes/book'
require './database/persistors/label_persistor'

class App
  def initialize
    @labels = LabelPersistor.read_from_file
    @genres = []
    @authors = []
    @games = []
    @music_albums = []
    @books = []
  end

  def add_book
    puts @labels.inspect
    puts ''
    puts 'ADD A NEW BOOK'
    print 'Add a genre: '
    genre = gets.chomp
    print 'Add an author: '
    author = gets.chomp
    # Label Input method to add a new label (reusable code)
    label = Label.input(@labels)
    # ----------------
    print 'Add a publish date: '
    publish_date = gets.chomp
    print 'Add a publisher: '
    publisher = gets.chomp
    print 'Add a cover state: '
    cover_state = gets.chomp
    book = Book.new(publish_date, publisher, cover_state)
    # change the book's genre and author setters for the following:
    # genre.add_item(book)
    # author.add_item(book)
    # only when methods to add genre and author objects are available
    book.genre = genre
    book.author = author
    # ----------------
    label.add_item(book)
    @books << book
    @labels << label
    save_data
    puts 'Book added'
  end

  def save_data
    LabelPersistor.write_to_file(@labels)
  end
end

# To test the add_book method, uncomment the following command:
App.new.add_book

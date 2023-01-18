require_relative './show_labels'
require_relative '../book'
module CreateBook
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Cover State (Good OR Bad): '
    cover_state = gets.chomp
    puts 'Choose a genre (Number): '
    list_all_genres
    index_genre = gets.chomp.to_i
    genre = @genres[index_genre]
    puts 'Choose an author (Number): '
    list_all_authors
    index_author = gets.chomp.to_i
    author = @authors[index_author]
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    book = Book.new(publisher, cover_state, genre, author, label, publish_date)
    @books.push({
                  'publisher' => book.publisher,
                  'cover_state' => book.cover_state,
                  'genre' => book.genre['name'],
                  'author' => book.author,
                  'selected_label' => book.label,
                  'publish_date' => book.publish_date
                })
    save_books
    puts 'Book succesfully created!'
  end
end

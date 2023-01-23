require_relative '../data/read_data'
require_relative './modules/show_books'
require_relative './modules/show_labels'
require_relative './modules/create_book'
require_relative './modules/show_music_album'
require_relative './modules/show_genres'
require_relative './modules/create_music_albums'
require_relative './write_data'
require_relative './modules/show_games'
require_relative './modules/show_authors'
require_relative './modules/create_game'
require_relative './modules/create_movie'
require_relative './modules/show_sources'
require_relative './modules/show_movies'
class App
  include ReadData
  include ListBooks
  include ListLabels
  include CreateBook
  include WriteData
  include ListMusicAlbum
  include ListGenre
  include CreateMusicAlbum
  include ListGames
  include ListAuthors
  include CreateGame
  include CreateMovie
  include ListSources
  include ListMovies
  def initialize
    @menu_options = {
      '1' => method(:list_all_books),
      '2' => method(:list_all_music_albums),
      '3' => method(:list_all_games),
      '4' => method(:list_all_genres),
      '5' => method(:list_all_labels),
      '6' => method(:list_all_authors),
      '7' => method(:list_all_movies),
      '8' => method(:list_all_sources),
      '9' => method(:add_book),
      '10' => method(:add_music_album),
      '11' => method(:add_game),
      '12' => method(:add_movie)
    }
    @books = read_books
    @labels = read_labels
    @music_albums = read_music_album
    @genres = read_genre
    @games = read_games
    @authors = read_authors
    @movies = read_movies
    @sources = read_sources
  end

  # Showing the options here
  def run
    @menu_options.each_with_index do |option, index|
      puts "#{index + 1} - #{option[1].name.to_s.split('_').join(' ').capitalize}"
    end
    puts '0 - Exit'
    puts '-----------------------------------------------------------'

    option = gets.chomp.to_s
    if @menu_options.key?(option)
      puts ''
      @menu_options[option].call
      puts ''
      puts '-----------------------------------------------------------'
      run
    elsif option == '0'
      puts "\nThank you for using this app!\n\n"
    else
      puts "\nThat is not a valid option\n\n"
      run
      puts '-----------------------------------------------------------'
    end
  end
end

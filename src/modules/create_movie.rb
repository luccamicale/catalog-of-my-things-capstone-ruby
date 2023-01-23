require_relative './show_sources'
require_relative '../movie'

module CreateMovie
  def add_movie
    print 'Movie:'
    movie = gets.chomp
    puts 'Choose a Movie (Number):'
    list_all_genres
    index_genre = gets.chomp.to_i
    genre = @genres[index_genre]
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    print 'Silet (True or False)'
    silet = gets.chomp
    movie = Movie.new(silet, genre, label, publish_date)
    @movies.push({
                   'silet' => movie.silet,
                   'genre' => movie.genre,
                   'selected_label' => movie.label,
                   'publish_date' => movie.publish_date
                 })
    save_games
    puts 'Movie succesfully created!'
  end
end

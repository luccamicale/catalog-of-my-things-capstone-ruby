require_relative './show_games'
require_relative '../game'
module CreateGame
  def add_game
    print 'Author: '
    author = gets.chomp
    puts 'Choose a genre (Number): '
    list_all_genres
    index_genre = gets.chomp.to_i
    genre = @genres[index_genre]
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    print 'Multiplayer(true or false):'
    multiplayer = gets.chomp
    print 'Last played at: (Year/month/day): '
    last_played_at = gets.chomp
    game = Game.new(multiplayer, last_played_at, genre, author, label, publish_date)
    @games.push({
                  'author' => game.author,
                  'genre' => game.genre['name'],
                  'label' => game.label,
                  'publish_date' => game.publish_date,
                  'multiplayer' => game.multiplayer,
                  'last_played_at' => game.last_played_at
                })

    save_games
    puts 'Game succesfully created!'
  end
end

require_relative './show_music_album'
require_relative '../music_album'
module CreateMusicAlbum
  def add_music_album
    print 'Genre: '
    genre = gets.chomp
    print 'Author: '
    author = gets.chomp
    puts 'Choose a label (Number): '
    list_all_labels
    index_label = gets.chomp.to_i
    label = @labels[index_label]
    print 'Date (Year/month/day): '
    publish_date = gets.chomp
    print 'On Spotify(true or false):'
    on_spotify = gets.chomp
    music_album = MusicAlbum.new(on_spotify, genre, author, label, publish_date)
    @music_albums.push({
                         'on_spotify' => music_album.on_spotify,
                         'genre' => music_album.genre,
                         'author' => music_album.author,
                         'selected_label' => music_album.label,
                         'publish_date' => music_album.publish_date
                       })
    save_music_albums
    puts 'Music Album succesfully created!'
  end
end

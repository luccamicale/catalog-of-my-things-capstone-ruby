module ListMusicAlbum
  def list_all_music_albums
    if @music_albums.empty?
      puts 'There\'s no books added yet!'
    elsif @music_albums.length >= 1
      @music_albums.each { |i|
        puts %(On Spotify?: #{i['on_spotify']} || Author: #{i['author']} || Genre: #{i['genre']})
      }
    end
  end
end

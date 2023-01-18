require 'json'
module WriteData
  def save_books
    json_file = File.open('././data/books.json')
    JSON.parse(File.read(json_file))
    File.write('././data/books.json', @books.to_json)
  end

  def save_music_albums
    json_file = File.open('././data/music_album.json')
    JSON.parse(File.read(json_file))
    File.write('././data/music_album.json', @music_albums.to_json)
  end

  def save_games
    json_file = File.open('././data/games.json')
    JSON.parse(File.read(json_file))
    File.write('././data/games.json', @games.to_json)
  end
end

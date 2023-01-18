require 'json'
require 'fileutils'

module ReadData
  def read_books
    json_file = File.open('./data/books.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_labels
    json_file = File.open('./data/labels.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_music_album
    json_file = File.open('./data/music_album.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_genre
    json_file = File.open('./data/genre.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_games
    json_file = File.open('./data/games.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end

  def read_authors
    json_file = File.open('./data/authors.json')
    data_from_file = File.read(json_file)
    JSON.parse(data_from_file)
  end
end

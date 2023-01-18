require_relative 'spec_helper'

describe MusicAlbum do
  # use on_spotify, date, genre, author, label
  music_album = MusicAlbum.new(true, '2020-01-01', 'Horror', 'Joy', 'Bad Horror')

  it 'takes parameters and returns a MusicAlbum object' do
    expect(music_album).to be_an_instance_of MusicAlbum
  end

  it 'returns the on spotify' do
    expect(music_album.on_spotify).to eq true
  end

  it 'returns the publish date' do
    expect(music_album.publish_date) == '2020-01-01'
  end

  it 'returns the genre' do
    expect(music_album.genre) == 'Horror'
  end
end

require_relative 'spec_helper'

describe MusicAlbum do
  music_album = MusicAlbum.new('28-08-2000', on_spotify: false)

  context 'the unit test for the music album class' do
    it 'new music album object' do
      expect(music_album).to be_instance_of(MusicAlbum)
    end

    it 'the correct publish date is 28-08-2000' do
      expect(music_album.publish_date).to eq('28-08-2000')
    end

    it 'Should be kind of Item object' do
      expect(music_album).to be_kind_of Item
    end
  end
end

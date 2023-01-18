require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(_on_spotify, *args)
    super(*args)
    @on_spotify = true
  end

  def can_be_archived?
    true if @archived || @cover_state == 'bad'
  end
end

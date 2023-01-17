require_relative 'item'

class Book < Item
  attr_accessor :publish_date, :cover_state, :publisher

  def initialize(publish_date, publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end

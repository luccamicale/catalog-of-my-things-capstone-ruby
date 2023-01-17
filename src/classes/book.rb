require_relative 'item'

class Book < Item
  attr_accessor :publish_date, :cover_state

  def initialize(publish_date, cover_state)
    super()
    @publish_date = publish_date
    @cover_state = cover_state
  end

  def can_be_archived?
    super && @cover_state == 'bad'
  end
end

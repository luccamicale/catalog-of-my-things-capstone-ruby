require_relative 'item'

class Book < Item
  def initialize(publish_date)
    super()
    @publish_date = publish_date
  end

  def can_be_archived?
    super && (Date.today - Date.parse(@publish_date)) / 365 > 5
  end
end

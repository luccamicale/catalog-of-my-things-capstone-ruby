require 'date'
class Item
  attr_accessor :genre, :author, :label, :date, :publish_date

  def initialize(genre, author, label, date)
    @id = Random.rand(1..1000)
    @genre = genre
    @author = author
    @label = label
    @publish_date = date
    @archived = false
  end

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)) > 3652
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end

# asd = Item.new('1', '1', '1', '1990-12-11')
# puts asd.publish_date

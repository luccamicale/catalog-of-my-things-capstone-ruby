require 'date'
require 'securerandom'

# Item class
class Item
  attr_accessor :publish_date, :id, :genre, :author, :label
  attr_reader :archived

  def initialize(publish_date = Date.today)
    @id = SecureRandom.uuid
    @genre = nil
    @author = nil
    @label = nil
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    (Date.today - Date.parse(@publish_date)).to_i / 365 > 10
  end
end

# Instance of Item class

# Instance of Item class with custom publish date
item = Item.new('2010-01-01')
item.genre = 'Horror'
item.author = 'Stephen King'
item.label = 'Penguin'
puts item.inspect
# Instance of Item class with custom

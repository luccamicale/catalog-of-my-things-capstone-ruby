require 'securerandom'

class Label
  attr_accessor :title, :color, :items, :id

  def initialize(title, color)
    @id = SecureRandom.uuid
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def self.input(labels)
    puts 'Enter a new label or select an existing one:'
    print '  Enter the title of the label:'
    title = gets.chomp
    if labels.any? { |label| label.title == title }
      puts '  Label found!'
      labels.find { |label| label.title == title }
    else
      puts '  Label not found! Creating a new one...'
      print '  Enter the color of the new label: '
      color = gets.chomp
      Label.new(title, color)
    end
  end
end
